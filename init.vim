
"  ____  _        _    _                 
" / ___|| |_ ___ | | _| | ___  ___  __ _ 
" \___ \| __/ _ \| |/ / |/ _ \/ __|/ _` |
"  ___) | || (_) |   <| | (_) \__ \ (_| |
" |____/ \__\___/|_|\_\_|\___/|___/\__,_|
                                       
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
" Plug 'roxma/nvim-completion-manager'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
" Plug 'lifepillar/vim-mucomplete'
Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/ncm2'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'grvcoelho/vim-javascript-snippets'
call plug#end()

" Theme
colorscheme gruvbox
set background=dark

" Basic config
scriptencoding utf-8

set hidden
set number
set relativenumber

nnoremap ; :
nnoremap <C-s> :w<CR>
inoremap ii <ESC>

" Remaps
" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" Para deixar de ser troxa
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
