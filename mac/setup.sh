#!/bin/bash

set -eux

# Install Command Line Tools for Xcode
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew packages
${HOME}/dotfiles/mac/brew.sh

# Install Ruby vi anyenv
${HOME}/dotfiles/common/install_ruby.sh


