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
" Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
call plug#end()

" airline fonts
let g:airline_powerline_fonts = 1

" lightline.vim config
set laststatus=2
set noshowmode

" Toggle NERDTree
map <C-t> :NERDTreeToggle<CR>

" Colored parentheses
let g:rainbow_active = 1

" Cursor shit
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Optionally reset the cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

set background=dark
set termguicolors
colorscheme gruvbox

let ayucolor="mirage" " for mirage version of theme
let &t_Co=256
