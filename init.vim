set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl


