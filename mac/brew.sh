#!/bin/bash

set -eux

brew udate

outdated=`brew outdated`
if [ -n "$outdated" ]; then
  cat << EOF
The following packages will upgrade.

$outdated

Are you sure?
If you do not want to upgrade, please type Ctrl-C.
EOF

  read dummy
  brew upgrade
fi

# Zsh
brew install zsh --disable-etcdir
brew install zsh-completions

# for Ruby
brew install openssl libyaml libffi

# packages
brew install jq

# Cask
brew tap phinze/homebrew-cask
brew install brew-cask

brew cask install appcleaner
brew cask install clipmenu
brew cask install keyremap4macbook
brew cask install bettertouchtool
brew cask install virtualbox
brew cask install vagrant
brew cask install xtrafinder
brew cask install skype
brew cask install ghc
brew cask install alfred
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install adobe-reader
brew cask install slack
# brew cask install kobito

brew cask alfred link

# Clean up old versions
brew cleanup
brew cask cleanup

