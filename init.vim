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
Plug 'lifepillar/vim-mucomplete'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Theme
colorscheme gruvbox
set background=dark

" Basic config
scriptencoding utf-8

set hidden
set number
set relativenumber

" Remaps
" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" Para deixar de ser troxa
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
