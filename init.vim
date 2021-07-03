set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl
set number relativenumber

map <silent> <C-n> :NERDTreeFocus<CR>
