#!/usr/bin/env bash

# https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Set application path to /Applications"

##### Developer Tools #####

# Miscelaneous
brew install --cask alfred
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask cakebrew
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask docker
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask font-hack-nerd-font
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask graphiql
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask lastpass
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask slack
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi


# Terminal
brew install --cask hyper
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask iterm2
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi


# Databases
brew install --cask postico
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi


# HTTP
brew install --cask charles
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask insomnia
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask postman
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# GitHub
brew install --cask gitup
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask gitify
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask github
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Java
brew install --cask intellij-idea
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Text Editor (pick one or install them all)
brew install --cask visual-studio-code
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask atom
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask sublime-text
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Docker
brew install --cask docker
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

##### Essential Applications #####

brew install --cask bitbar
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask cheatsheet
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask caffeine
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask devdocs
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask dropbox
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask knock
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask firefox
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask flux
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask flycut
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask google-chrome
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask google-chrome-canary
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask istat-menus
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask joplin
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask kap
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask karabiner-elements
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask keycastr
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask numi
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask rescuetime
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask skitch
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask steam
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask spectacle
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask spotify
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask spotmenu
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask the-unarchiver
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask vanilla
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install --cask vlc
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

