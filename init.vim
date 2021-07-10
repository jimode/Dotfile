source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Display Available Key Bindings
Plug 'liuchengxu/vim-which-key'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl
map <silent> <C-n> :NERDTreeFocus<CR>

"set foldmethod=syntax
"set ignorecase
"set hlsearch
"set incsearch
"set autoindent
"set smartindent
"set expandtab
"set fileencoding=utf-8
"set encoding=utf-8
"set backspace=indent,eol,start
"set ts=2 sts=2 sw=2 expandtab
"set smartindent
"set number relativenumber
"set showcmd
"set laststatus=2

" Abbreviations
inoreabbrev teh the
cnoreabbrev Wq wq


" Mappings
map <Leader>so :source ~/.config/nvim/init.vim<CR>

" Mappings - Normal Mode
nnoremap <leader><space> :noh<CR>
nnoremap <leader>m :NERDTreeToggle<CR>

" Mappings - Insert Mode
" inoremap <C-1> <space>=><space>
" inoremap <C-s> <Esc>:w<CR>a

let g:startify_bookmarks = [
      \ {'w': '~/Documents/Vodafone/maac-vhub/packages/gatsby-vf-vhub-contentful'},
      \ {'v': '~/.config/nvim/init.vim'},
      \ ]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],                    'type': 'bookmarks' },
      \ { 'header': ['   Files'],                        'type': 'files' } ,
      \ { 'header': ['   Sessions'],                        'type': 'sessions' },
      \ { 'header': ['   Current Directory '. getcwd()], 'type': 'dir' },
      \ ]

let g:startify_fortune_use_unicode = 1
nmap <c-n> :Startify<cr>
