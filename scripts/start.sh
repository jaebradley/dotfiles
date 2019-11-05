#!/usr/bin/env bash

# Exporting present working directory to PATH so can execute scripts

CURRENT_DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Current directory is $CURRENT_DIRECTORY"

# Install xcode command-line tools
echo "Installing xcode command line tools"
xcode-select --install

# Install homebrew
echo "Installing homebrew"
source "$CURRENT_DIRECTORY/install_homebrew.sh"

# Install homebrew packages
echo "Installing homebrew packages"
source "$CURRENT_DIRECTORY/../brew/install.sh"

# Check homebrew tap
echo "Checking homebrew tap"
source "$CURRENT_DIRECTORY/../brew/tap.sh"

# Install homebrew cask
echo "Checking homebrew casks"
source "$CURRENT_DIRECTORY/../brew/cask.sh"

# Install / update nvm
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install oh-my-zsh
echo "Installing oh-my-zsh"
source "$CURRENT_DIRECTORY/install_zsh.sh"

# Install oh-my-zsh plugins
echo "Installing oh-my-zsh plugins"
source "$CURRENT_DIRECTORY/install_oh_my_zsh_plugins.sh"

# Install mac-cli
echo "Installing mac-cli"
source "$CURRENT_DIRECTORY/install_mac_cli.sh"

# Setup Mac
echo "Setting mac defaults"
source "$CURRENT_DIRECTORY/../mac/setup.sh"

# npm install globals
echo "Installing global npm packages"
source "$CURRENT_DIRECTORY/../npm/install.sh"

# Create ssh key
echo "Creating ssh key"
source "$CURRENT_DIRECTORY/generate_ssh_key.sh"
