set number
set relativenumber

set termguicolors

set expandtab
set shiftwidth=2
set softtabstop=2

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'cocopon/iceberg.vim'
  Plug 'altercation/vim-colors-solarized'
call plug#end()

colorscheme iceberg
