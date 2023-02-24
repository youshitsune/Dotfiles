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
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let NERDTreeMinimalUI = 1

autocmd BufRead diary.md :VimwikiDiaryGenerateLinks
autocmd BufWritePost *.ms :! groff -ms %  -e -T pdf > %:r.pdf

call plug#begin('~/.vim/plugged')
	Plug 'jiangmiao/auto-pairs'
	Plug 'vimwiki/vimwiki'
    Plug 'junegunn/goyo.vim'
    Plug 'preservim/nerdtree'
    Plug 'flazz/vim-colorschemes'
    Plug 'ap/vim-css-color'
    Plug 'evanleck/vim-svelte'
    Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


