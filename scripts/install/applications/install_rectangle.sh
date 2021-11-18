#!/bin/bash/

function install_rectangle() {
  if [[ -d "/Applications/Rectangle.app" ]]; then echo "Rectangle application already exists" && exit 0; fi

  curl -IL "https://github.com/rxhanson/Rectangle/releases/download/v0.49/Rectangle0.49.dmg"
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  curl -L "https://github.com/rxhanson/Rectangle/releases/download/v0.49/Rectangle0.49.dmg" --output /tmp/rectangle.dmg
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  hdiutil attach /tmp/rectangle.dmg
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  local expectedVolumeDirectory="/Volume/Rectangle0.49"
  if [[ ! -d  "${expectedVolumeDirectory}" ]]; then echo "${expectedVolumeDirectory} does not exist" && exit 255; fi


  cp -R "${expectedVolumeDirectory}" /Applications/
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi

  rm -rf /tmp/rectangle.dmg
  if [[ $? -ne 0 ]]; then echo "Error on line $LINENO" && exit 255; fi
}

install_rectangle
