#!/usr/bin/env bash

brew install vim
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install ack
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install ansiweather
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install autojump
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install calc
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install cask
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# There are aliases that depend on coreutils
brew install coreutils
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install diff-so-fancy
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# https://github.com/junegunn/fzf#using-homebrew-or-linuxbrew
brew install fzf
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install docker-machine
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install docker-compose
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install git
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install git-standup
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install go
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew link --overwrite go
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# https://devcenter.heroku.com/articles/heroku-cli#download-and-install
brew install heroku/brew/heroku
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install htop
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install httpie
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install hub
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install java
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install jq
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# https://github.com/lastpass/lastpass-cli#installing-on-os-x
brew install lastpass-cli
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/
# Ensure to tap mongodb before install
brew tap mongodb/brew
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install mongodb-community@4.2
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install node
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install neovim
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install the_silver_searcher
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install tldr
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install tmux
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install tree
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install peco
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install pgcli
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install postgresql
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#macos-with-homebrew
brew tap sambadevi/powerlevel9k
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install powerlevel9k
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

### PYTHON ###
which python && python --version
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install python
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Install virtualenvwrapper or else sourcing virtualenv file in .zshrc will lead to error
pip virtualenvwrapper
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install rbenv
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install wget
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install yarn
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install zsh
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install zsh-completions
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

brew install zsh-syntax-highlighting
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Installing heroku autocomplete
# https://devcenter.heroku.com/articles/heroku-cli-autocomplete

echo "Installing heroku autocomplete"
heroku update
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

heroku autocomplete
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi

# Installing key bindings and fuzzy completion for fzf

echo "Installing key bindings and fuzzy completion for fzf"
$(brew --prefix)/opt/fzf/install
if [[ 0 -ne $? ]]; then echo "error on line ${LINENO}" && exit 255; fi
