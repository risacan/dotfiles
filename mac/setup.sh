#!/bin/bash

set -eux

# Install Command Line Tools for Xcode
set +e
xcode-select -v || xcode-select --install
set -e

# Install Homebrew
set +e
brew -v || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
set -e

# Install Homebrew packages
${HOME}/dotfiles/mac/brew.sh

# Create dotfiles
${HOME}/dotfiles/common/create_dotfiles.sh

# Install Ruby vi anyenv
${HOME}/dotfiles/common/install_ruby.sh


