
"  ____  _        _    _                 
" / ___|| |_ ___ | | _| | ___  ___  __ _ 
" \___ \| __/ _ \| |/ / |/ _ \/ __|/ _` |
"  ___) | || (_) |   <| | (_) \__ \ (_| |
" |____/ \__\___/|_|\_\_|\___/|___/\__,_|

" Auto Download vim-Plug
" TODO

let mapleader=','

call plug#begin()
" Visual
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" Plug 'jiangmiao/auto-pairs' testando:
Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
call plug#end()

" Theme
colorscheme gruvbox
set background=dark

" Basic config
scriptencoding utf-8

"Tab Size
set tabstop=4
set shiftwidth=4
set expandtab

set hidden
set number
set relativenumber

nnoremap ; :
nnoremap <C-s> :w<CR>
inoremap ii <ESC>

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" nerdcommenter
filetype plugin on
let g:NERDSpaceDelims = 1

" Para deixar de ser troxa
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let g:ctrlp_map = <c-p>
