#!/usr/bin/env bash

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Installing homebrew packages from $CURRENT_DIRECTORY"

brew install vim
brew install ack
brew install ansiweather
brew install autojump
brew install calc
brew install cask
# There are aliases that depend on coreutils
brew install coreutils
brew install diff-so-fancy
# https://github.com/junegunn/fzf#using-homebrew-or-linuxbrew
brew install fzf
brew install docker-machine
brew install docker-compose
brew install git
brew install git-standup
brew install go
brew link --overwrite go
# https://devcenter.heroku.com/articles/heroku-cli#download-and-install
brew install heroku/brew/heroku
brew install htop
brew install httpie
brew install hub
brew install java
brew install jq
# https://github.com/lastpass/lastpass-cli#installing-on-os-x
brew install lastpass-cli
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/
# Ensure to tap mongodb before install
brew tap mongodb/brew
brew install mongodb-community@4.2
brew install node
brew install neovim
brew install the_silver_searcher
brew install tldr
brew install tmux
brew install tree
brew install peco
brew install pgcli
brew install postgresql
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#macos-with-homebrew
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

### PYTHON ###
which python && python --version
brew install python
# Install virtualenvwrapper or else sourcing virtualenv file in .zshrc will lead to error
pip virtualenvwrapper

###

brew install rbenv
brew install wget
brew install yarn
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting

# Installing heroku autocomplete
# https://devcenter.heroku.com/articles/heroku-cli-autocomplete

echo "Installing heroku autocomplete"

heroku update
heroku autocomplete

# Installing key bindings and fuzzy completion for fzf

echo "Installing key bindings and fuzzy completion for fzf"

$(brew --prefix)/opt/fzf/install
