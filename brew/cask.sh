#!/usr/bin/env bash

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Installing homebrew casks from $CURRENT_DIRECTORY"

# https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Set application path to /Applications"

##### Developer Tools #####

# Miscelaneous
brew install --cask alfred
brew install --cask cakebrew
brew install --cask docker
brew install --cask font-hack-nerd-font
brew install --cask graphiql
brew install --cask lastpass
brew install --cask slack

# Terminal
brew install --cask hyper
brew install --cask iterm2

# Databases
brew install --cask postico
brew install --cask psequel

# HTTP
brew install --cask charles
brew install --cask insomnia
brew install --cask postman

# GitHub
brew install --cask gitup
brew install --cask gitify
brew install --cask github

# Java
brew install --cask intellij-idea
brew install --cask java

# Text Editor (pick one or install them all)
brew install --cask visual-studio-code
brew install --cask atom
brew install --cask sublime-text

# Docker
brew install --cask docker

##### Essential Applications #####

brew install --cask bitbar
brew install --cask cheatsheet
brew install --cask caffeine
brew install --cask devdocs
brew install --cask dropbox
brew install --cask knock
brew install --cask firefox
brew install --cask flux
brew install --cask flycut
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask istat-menus
brew install --cask joplin
brew install --cask kap
brew install --cask karabiner-elements
brew install --cask keycastr
brew install --cask numi
brew install --cask little-snitch
brew install --cask rescuetime
brew install --cask skitch
brew install --cask station
brew install --cask steam
brew install --cask spectacle
brew install --cask spotify
brew install --cask spotmenu
brew install --cask the-unarchiver
brew install --cask vanilla
brew install --cask vlc
