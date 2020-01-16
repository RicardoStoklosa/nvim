" Auto Download vim-Plug
" TODO
let mapleader=','

call plug#begin()
    " VISUAL
    Plug 'arcticicestudio/nord-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'djoshea/vim-autoread'
    "Syntax
    Plug 'scrooloose/nerdcommenter'
    Plug 'ntpeters/vim-better-whitespace'

    "Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'

    Plug 'terryma/vim-multiple-cursors'

    " Autocomplete
    Plug 'lifepillar/vim-mucomplete'
    Plug 'xavierd/clang_complete'
    Plug 'vim-scripts/ReplaceWithRegister'
    Plug 'davidhalter/jedi-vim'

    Plug 'kien/ctrlp.vim'
    Plug 'Raimondi/delimitMate'
    Plug 'benmills/vimux'
    Plug 'preservim/nerdtree'
    Plug 'ternjs/tern_for_vim' , { 'do' : 'npm install' }

    "Motion
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'lilydjwg/colorizer'

    Plug 'christoomey/vim-tmux-navigator'
call plug#end()
" MU
"
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect
set shortmess+=c
let g:mucomplete#enable_auto_at_startup = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-c>'
let g:multi_cursor_next_key            = '<C-c>'
let g:multi_cursor_prev_key            = '<C-S-c>'
let g:multi_cursor_skip_key            = '<C-S-x>'
let g:multi_cursor_quit_key            = '<Esc>'

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$|plugged\',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

map <F8> :VimuxPromptCommand("")<CR>
map <F9> :VimuxRunLastCommand<CR>

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
nnoremap <silent> <C-s-k> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-s-j> :call comfortable_motion#flick(-100)<CR>

set autochdir
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>

" AUTO-PAIRS
let g:AutoPairsMultilineClose=0
