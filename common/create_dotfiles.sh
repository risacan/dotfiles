#!/bin/bash

set -x

dotfiles_base=${HOME}/dotfiles
dotfiles_common=${dotfiles_base}/common

dotfiles_dir=${dotfiles_common}/dotfiles

for file in $(ls ${dotfiles_dir})
do
  ln -s ${dotfiles_dir}/${file} ${HOME}/.${file}
done

cp -n ${HOME}/dotfiles/common/zshrc ${HOME}/.zshrc

# Vim
mkdir -p ${HOME}/{.vim,.vimbackup}
ln -s ${dotfiles_common}/vim-indent ${HOME}/.vim/indent