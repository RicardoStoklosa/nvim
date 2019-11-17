" Auto Download vim-Plug
" TODO
let mapleader=','
call plug#begin()
    " VISUAL
    Plug 'haishanh/night-owl.vim'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'

    "Syntax
    Plug 'vim-syntastic/syntastic'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdcommenter'
    Plug 'ntpeters/vim-better-whitespace'

    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'

    Plug 'liuchengxu/vim-clap'

    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'vim-scripts/ReplaceWithRegister'
    "Motion
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'ap/vim-buftabline'
call plug#end()

" THEME
colorscheme night-owl
let g:lightline = { 'colorscheme': 'nightowl' }

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

" COC PLUGINS
let path = $HOME."/.config/coc/extensions/node_modules/"
let extentions = [
            \ 'coc-python',
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-texlab',
            \ 'coc-snippets',
            \ 'coc-html',
            \ 'coc-phpls',
            \ 'coc-sql',
            \ 'coc-explorer',
            \ 'coc-yank',
            \ ]
for extention in extentions
    if !isdirectory(path . extention)
        autocmd BufEnter * :CocInstall extention
    endif
endfor

" COC-EXPLORER
nmap <c-n> :CocCommand explorer<CR>

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

" CLAP
nmap <c-p> :Clap<CR>

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
