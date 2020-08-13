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

    Plug 'jiangmiao/auto-pairs'

    Plug 'terryma/vim-multiple-cursors'

    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-scripts/ReplaceWithRegister'

    Plug 'kien/ctrlp.vim'
    Plug 'benmills/vimux'
    Plug 'preservim/nerdtree'

    "Motion
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'lilydjwg/colorizer'

    Plug 'christoomey/vim-tmux-navigator'
call plug#end()

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
map <F10> :make

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

" TAB KEY FOR COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

