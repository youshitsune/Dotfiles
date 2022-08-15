set nocompatible
filetype plugin on
filetype detect
syntax on
set tabstop=4

let mapleader = '\'

call plug#begin('~/.vim/plugged')
  Plug 'vimwiki/vimwiki'
call plug#end()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
