#!/bin/bash

set -eux

sudo yum install -y gcc openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
sudo git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
sudo git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

cat <<EOF | sudo tee /etc/profile.d/rbenv.sh
export RBENV_ROOT="/usr/local/rbenv"
export PATH="\${RBENV_ROOT}/bin:\${PATH}"
eval "\$(rbenv init --no-rehash -)"
EOF

source /etc/profile.d/rbenv.sh

sudo -i /usr/local/rbenv/bin/rbenv install 2.2.3
sudo -i /usr/local/rbenv/bin/rbenv global 2.2.3
sudo -i /usr/local/rbenv/shims/gem install bundler --no-ri --no-rdoc
sudo -i /usr/local/rbenv/bin/rbenv rehash
