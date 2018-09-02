#!/usr/bin/env bash

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Checking homebrew tap from $CURRENT_DIRECTORY"

# Do this before executing cask.sh
brew tap homebrew/cask-versions
brew tap caskroom/fonts
