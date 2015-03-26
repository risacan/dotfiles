#!/bin/bash

set -x

dotfiles_dir=${HOME}/dotfiles/common/dotfiles

for file in $(ls ${dotfiles_dir})
do
  ln -s ${dotfiles_dir}/${file} ${HOME}/.${file}
done

cp -n ${HOME}/dotfiles/common/zshrc ${HOME}/.zshrc
