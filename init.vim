" Auto Download vim-Plug
" TODO
let mapleader=','

call plug#begin()
    " VISUAL
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'

    "Syntax
    Plug 'vim-syntastic/syntastic'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdcommenter'
    Plug 'ntpeters/vim-better-whitespace'

    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'

    " Autocomplete
    Plug 'lifepillar/vim-mucomplete'
    Plug 'xavierd/clang_complete'
    Plug 'vim-scripts/ReplaceWithRegister'
    Plug 'davidhalter/jedi-vim'

    Plug 'kien/ctrlp.vim'

    "Motion
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'ap/vim-buftabline'
call plug#end()
" MU
set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect
set shortmess+=c
let g:mucomplete#enable_auto_at_startup = 1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$|plugged\',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

call plug#end()
map <F8> :make!<CR>
" THEME
set termguicolors
colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }

" CLIPBOARD
set clipboard=unnamedplus

" TAB SIZE
set tabstop=4
set shiftwidth=4
set expandtab

" LINE COUNTER
set hidden
set number
set relativenumber

" nerdcommenter
filetype plugin on
" let g:NERDSpaceDelims = 1

" VIM-BETTER-SPACE
let g:strip_whitespace_on_save=1
let g:better_whitespace_enabled=0
let g:strip_whitespace_confirm=0

" CONFORTABLE MOTION
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

set autochdir
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>

" AUTO-PAIRS
let g:AutoPairsMultilineClose=0
