set nocompatible
filetype plugin on
filetype detect
syntax on
set tabstop=4

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufRead diary.md VimwikiDiaryGenerateLinks

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'index': 'Home'}]
let mapleader = '\'

call plug#begin('~/.vim/plugged')
  Plug 'vimwiki/vimwiki'
call plug#end()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
