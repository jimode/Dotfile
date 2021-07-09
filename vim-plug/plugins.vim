" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged') 

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-fugitive'
" File Explorer
Plug 'scrooloose/nerdtree'
" Relative and Hybrid Numbering
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

call plug#end()
