#!/usr/bin/env bash

which -s brew
if [[ $? != 0 ]] ; then
  # Install homebrew if no brew detected
  echo "No homebrew detected - installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew detected - updating homebrew"
  brew update
fi
