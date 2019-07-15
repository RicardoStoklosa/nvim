call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-completion-manager'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

scriptencoding utf-8

set hidden
set number
set relativenumber

map <C-n> :NERDTreeToggle<CR>
