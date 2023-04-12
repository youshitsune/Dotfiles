syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number relativenumber
set undofile
set ignorecase
set smartcase
set incsearch
set nocompatible
set nomodeline
set autochdir
set laststatus=2
filetype plugin on

let mapleader = ' '

call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'mcchrish/nnn.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'vim-scripts/Adaryn.vim'
call plug#end()


colorscheme adaryn

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>n :NnnPicker<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

