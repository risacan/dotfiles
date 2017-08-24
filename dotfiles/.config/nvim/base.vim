if &encoding !=# 'utf-8'
  set encoding=utf-8
endif

scriptencoding utf-8

language message C

let g:mapleader = '\<Space>'
let g:maplocalleader = ','

set packpath=

if has('multi_byte_ime')
  set iminsert=0
  set imsearch=0
endif
