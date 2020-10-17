if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype plugin on
syntax on
set number
set relativenumber
inoremap jk <esc>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
" noremap <esc> <nop>

set tabstop=2
set softtabstop=2
set shiftwidth=2
" spaces instead of tabs
set expandtab
" so term is on bottom
set splitbelow

" set autoindent
filetype plugin indent on

" find shit
set path+=**
set wildmenu
set backspace=1

call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-fugitive'
call plug#end()

"set background=dark
"set termguicolors
"colorscheme desert 

let ayucolor="mirage" " for mirage version of theme
let &t_Co=256
