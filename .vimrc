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

" nnoremap Z <Nop>
" nnoremap ZZ <Nop>

" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>
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
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'itchyny/lightline.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'luochen1990/rainbow'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'

" purescript
Plug 'purescript-contrib/purescript-vim'

" haskell
Plug 'neovimhaskell/haskell-vim'

" dhall
Plug 'vmchale/dhall-vim'

" elm
Plug 'dtaskoff/elm-vim'

" rust
Plug 'rust-lang/rust.vim'

" rescript
" Plug 'rescript-lang/vim-rescript'
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
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  "let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  "let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"
endif

set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

" Optionally reset the cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

set termguicolors
set background=dark
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='medium'
colorscheme gruvbox-material
let &t_ut=''

let &t_Co=256
set shell=/opt/local/bin/zsh
