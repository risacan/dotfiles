#!/bin/bash

set -eux

brew update

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

# Core
brew install coreutils

# Zsh
brew install zsh --without-etcdir
brew install zsh-completions

# for Ruby
brew install openssl libyaml libffi

# packages
brew install ansible
brew install byobu
brew install fzf
brew install ghq
brew install git-flow
brew install imagemagick
brew install jq
brew install libmagic
brew install libxml2
brew install libxslt
brew install mongodb
brew install mysql
brew install redis
brew install tree
brew install libtool
brew install htop
brew install s3cmd
brew install ffmpeg
brew install nkf
brew install sl
brew install peco
brew install postgresql
brew install tmux
brew install watch
brew install watchman
brew install flow
brew install vitorgalvao/tiny-scripts/cask-repair

# Cask
brew install caskroom/cask/brew-cask

brew cask install appcleaner
brew cask install atom
brew cask install clipmenu
#brew cask install keyremap4macbook
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
brew cask install gimp
brew cask install macdown
brew cask install xquartz

brew install wine # It requires xquartz

# Clean up old versions
brew cleanup
brew cask cleanup

