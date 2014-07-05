#!/bin/bash

dotfiles=(.zshrc .zshenv .gemrc)

for file in ${dotfiles[@]}
do
  ln -s ${HOME}/.dotfiles/${file} ${HOME}/${file}
done

