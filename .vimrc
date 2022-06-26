set nocompatible
filetype plugin on
syntax on
colorscheme pablo
set tabstop=4

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufRead diary.md VimwikiDiaryGenerateLinks

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'index': 'Home'}]
let g:feedvim_urls = [ 'https://www.science.org/action/showFeed?type=etoc&feed=rss&jc=sciadv', 'https://www.science.org/action/showFeed?type=etoc&feed=rss&jc=sciimmunol' ]
let mapleader = '\'

call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'vimwiki/vimwiki'
  Plug 'ap/vim-css-color'
  Plug 'vim-airline/vim-airline'
  Plug 'bobuhiro11/feed.vim'
  Plug 'mattn/webapi-vim'
  Plug 'tyru/open-browser.vim'
call plug#end()

nnoremap <leader>n :NERDTree<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
