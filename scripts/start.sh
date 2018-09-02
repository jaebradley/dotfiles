#!/usr/bin/env bash

# Exporting present working directory to PATH so can execute scripts

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Current directory is $CURRENT_DIRECTORY"

# Install homebrew
source "$CURRENT_DIRECTORY/install_homebrew.sh"

# Install homebrew packages
source "$CURRENT_DIRECTORY/../brew/install.sh"

# Check homebrew tap
source "$CURRENT_DIRECTORY/../brew/tap.sh"

# Install homebrew cask
source "$CURRENT_DIRECTORY/../brew/cask.sh"

# Install / update nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install oh-my-zsh
source "$CURRENT_DIRECTORY/install_zsh.sh"

# Overwrite .zshrc
# Install custom plugins
# Install all functions and scripts into .zshrc

# Overwrite hyper configuration
# Overwrite mac setup configuration
# npm install globals
# Setup psql config
# Overwrite git config
# Add .gitconfig.local
# Add ssh config
# Add gh key
# add aliases
# add functions
# add ansiweatherrc
