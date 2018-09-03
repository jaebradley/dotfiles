#!/usr/bin/env bash

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Installing homebrew casks from $CURRENT_DIRECTORY"

##### Developer Tools #####

# Miscelaneous
brew cask install alfred
brew cask install cakebrew
brew cask install docker
brew cask install font-hack-nerd-font
brew cask install graphiql
brew cask install slack

# Terminal
brew cask install hyper
brew cask install iterm2

# Databases
brew cask install mongodb
brew cask install postico
brew cask install psequel

# HTTP
brew cask install charles
brew cask install insomnia
brew cask install postman

# GitHub
brew cask install gitify
brew cask install github

# Java
brew cask install intellij-idea
brew cask install java

# Text Editor (pick one or install them all)
brew cask install visual-studio-code
brew cask install atom
brew cask install sublime-text

##### Essential Applications #####

brew cask install bitbar
brew cask install cheatsheet
brew cask install caffeine
brew cask install dropbox
brew cask install knock
brew cask install firefox
brew cask install flux
brew cask install flycut
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install istat-menus
brew cask install joplin
brew cask install kap
brew cask install lastpass-cli --with-pinentry
brew cask install numi
brew cask install little-snitch
brew cask install rescuetime
brew cask install skitch
brew cask install station
brew cask install steam
brew cask install spectacle
brew cask install spotify
brew cask install spotmenu
brew cask install the-unarchiver
brew cask install vanilla
brew cask install vlc
