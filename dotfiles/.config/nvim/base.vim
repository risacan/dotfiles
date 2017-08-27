if &encoding !=# 'utf-8'
  set encoding=utf-8
endif

scriptencoding utf-8

language message C

filetype off
filetype plugin indent off

let g:python3_host_prog = expand($PYENV_ROOT . '/shims/python3')

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

nnoremap "\<Space>" <Nop>
nnoremap ',' <Nop>
