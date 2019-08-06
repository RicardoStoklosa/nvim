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
    Plug 'vim-syntastic/syntastic'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'ntpeters/vim-better-whitespace'

    " Plug 'jiangmiao/auto-pairs' testando:
    Plug 'Raimondi/delimitMate'

    Plug 'tpope/vim-surround'
    Plug 'kien/ctrlp.vim'

    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/goyo.vim'

    Plug 'xolox/vim-notes'
    Plug 'xolox/vim-misc'

    Plug 'vim-scripts/ReplaceWithRegister'
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
" inoremap ii <ESC>

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
" erro termo <c-p>
" let g:ctrlp_map=<c-p>

" coc
let path = $HOME."/.config/coc/extensions/node_modules/"
if !isdirectory(path . "coc-python")
    autocmd BufEnter * :CocInstall coc-python
endif

if !isdirectory(path . "coc-json")
    autocmd BufEnter * :CocInstall coc-json
endif

if !isdirectory(path . "coc-tsserver")
    autocmd BufEnter * :CocInstall coc-tsserver
endif

if !isdirectory(path . "coc-texlab")
    autocmd BufEnter * :CocInstall coc-texlab
endif

if !isdirectory(path . "coc-snippets")
    autocmd BufEnter * :CocInstall coc-snippets
endif

if !isdirectory(path . "coc-html")
    autocmd BufEnter * :CocInstall coc-html
endif

if !isdirectory(path . "coc-phpls")
    autocmd BufEnter * :CocInstall coc-phpls
endif

if !isdirectory(path . "coc-sql")
    autocmd BufEnter * :CocInstall coc-sql
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"<Paste>

" vim-better-space

let g:strip_whitespace_on_save=1

let g:strip_whitespace_confirm=0

" notes
let g:notes_directories = ['~/Notes']

map <leader>d I#<esc>:r !date "+\%d/\%m" <cr> kJo<TAB><esc>
let g:notes_tab_indents = 0
