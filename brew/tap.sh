#!/usr/bin/env bash

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Checking homebrew tap from $CURRENT_DIRECTORY"

# Do this before executing cask.sh
brew tap homebrew/cask-versions

# https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
brew tap caskroom/fonts

# https://devcenter.heroku.com/articles/heroku-cli#download-and-install
brew tap heroku/brew
