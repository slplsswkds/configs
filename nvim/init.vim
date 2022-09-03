set encoding=utf-8
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set nu
set tabstop=2
set shiftwidth=2
set expandtab

"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
nnoremap H gT
nnoremap L gt

call plug#begin()
	Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'Thyrum/vim-stabs'
	Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'rust-lang/rust.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'jalvesaq/Nvim-R'
call plug#end()
