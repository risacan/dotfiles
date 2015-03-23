#!/bin/bash

set -eux

git clone https://github.com/riywo/anyenv ~/.anyenv
mkdir ~/.anyenv/plugins
git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update
anyenv install rbenv
source ~/.zshenv
rbenv install 2.2.1
rbenv global 2.2.1
gem install bundler --no-ri --no-rdoc
rbenv rehash
