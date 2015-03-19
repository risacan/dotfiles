#!/bin/bash

set -x

for file in $(ls ${HOME}/dotfiles/common/dotfiles)
do
  ln -s ${dotfiles_dir}/${file} ${HOME}/.${file}
done

cp -n ${HOME}/dotfiles/common/zshrc ${HOME}/.zshrc
