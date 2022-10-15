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
set nomodeline


let mapleader = ' '
let NERDTreeMinimalUI = 1


call plug#begin('~/.vim/plugged')
	Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/goyo.vim'
    Plug 'preservim/nerdtree'
    Plug 'flazz/vim-colorschemes'
    Plug 'ap/vim-css-color'
    Plug 'evanleck/vim-svelte'
call plug#end()

colorscheme badwolf

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


