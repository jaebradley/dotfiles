#!/bin/bash/

function installJdk17() {
  if [[ -d "/Library/Java/JavaVirtualMachines" ]]; then echo "JDK 17 installed" && exit 0; fi

  if [[ $EUID -ne 0 ]]; then echo "Run as root" && exit 255; fi

  curl -L "https://download.oracle.com/java/17/latest/jdk-17_macos-aarch64_bin.dmg" --output "/tmp/jdk-17"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  hdiutil attach /tmp/jdk-17
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  sudo installer -pkg "/Volumes/JDK 17.0.1/JDK 17.0.1.pkg" -target /
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  diskutil umount "/Volumes/JDK 17.0.1/"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi

  rm -rf "/tmp/jdk-17"
  if [[ $? -ne 0 ]]; then echo "Error on line ${LINENO}" && exit 255; fi
}

installJdk17

