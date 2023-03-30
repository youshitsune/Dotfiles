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
set noshowmode
if !has('gui_running')
  set t_Co=256
endif
filetype plugin on

let mapleader = ' '
let g:vimwiki_list = [{'path': '~/Documents/Notes/', 'syntax': 'markdown', 'ext': '.md'}]
let g:lightline = {
      \ 'colorscheme': 'spaceduck',
      \ }

autocmd BufRead diary.md :VimwikiDiaryGenerateLinks
autocmd BufWritePost *.ms :! groff -ms %  -e -T pdf > %:r.pdf

call plug#begin('~/.vim/plugged')
	Plug 'vimwiki/vimwiki'
    Plug 'ap/vim-css-color'
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
    Plug 'itchyny/lightline.vim'
    Plug 'mcchrish/nnn.vim'
    Plug 'junegunn/goyo.vim'
call plug#end()

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme spaceduck

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>n :NnnPicker<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

