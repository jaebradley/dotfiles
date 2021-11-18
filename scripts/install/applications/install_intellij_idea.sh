#!/bin/bash

# From https://www.jetbrains.com/idea/download/download-thanks.html?platform=macM1&code=IIC
# Direct link is copied from the hyper-linked direct link on the download page
# Checksum link is copied from the hyper-linked SHA-256 checksum link on the download page

function install_intellij_idea() {
  if [[ -d "/Applications/Intellij IDEA CE" ]]; then echo "Intellij is already installed" && exit 0; fi

  local dmg_url="https://download.jetbrains.com/idea/ideaIC-2021.2.3-aarch64.dmg?_gl=1*1oiw9gx*_ga*MTE1Mjg2MDU0OS4xNjM3MTIwNzM5*_ga_V0XZL7QHEB*MTYzNzEyMDc2Mi4xLjEuMTYzNzEyMDk0MS4w&_ga=2.235293319.74824018.1637120739-1152860549.1637120739"

  curl -IL "${dmg_url}"
  if [[ $? -ne 0 ]]; then echo "Failed on ${LINENO}" && exit 255; fi

  local download_location="/tmp/intellij_idea.dmg"
  curl -L "${dmg_url}" --output "${download_location}"
  if [[ $? -ne 0 ]]; then echo "Failed on ${LINENO}" && exit 255; fi
  local checksumContent=$(curl -L "https://download.jetbrains.com/idea/ideaIC-2021.2.3-aarch64.dmg.sha256?_gl=1*kceo86*_ga*MTE1Mjg2MDU0OS4xNjM3MTIwNzM5*_ga_V0XZL7QHEB*MTYzNzEyMDc2Mi4xLjEuMTYzNzEyMDk0MS4w&_ga=2.261522699.74824018.1637120739-1152860549.1637120739")
  if [[ $? -ne 0 ]]; then echo "Failed on ${LINENO}" && exit 255; fi

  local checksum=$(awk '{ print $1 }' <<< "${checksumContent}")
  if [[ $? -ne 0 ]]; then echo "Failed on ${LINENO}" && exit 255; fi

  local calculatedCheckSumContent=$(shasum -a 256 "${download_location}")

  local calculatedCheckSum=$(awk '{ print $1 }' <<< "${calculatedCheckSumContent}")
  if [[ $? -ne 0 ]]; then echo "Failed on ${LINENO}" && exit 255; fi

  if [[ "${checksum}" != "${calculatedCheckSum}" ]]; then echo "Expected checksum ${checksum} is not equal to the calculated check sum ${calculatedCheckSum}" && exit 255; fi


  hdiutil attach "${download_location}"
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  local expectedVolumeDirectory="/Volumes/Intellij IDEA CE"
  if [[ ! -d  "${expectedVolumeDirectory}" ]]; then echo "${expectedVolumeDirectory} does not exist" && exit 255; fi


  cp -R "${expectedVolumeDirectory}" /Applications/
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  rm -rf "${download_location}"
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi
}

install_intellij_idea

