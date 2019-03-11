set number
set relativenumber

set termguicolors

set expandtab
set shiftwidth=2
set softtabstop=2

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'cocopon/iceberg.vim'
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/goyo.vim'
call plug#end()

colorscheme iceberg

" Fuzzy finding
set path+=**
set wildmenu

" Tags
command! MakeTags !ctags -R .
