set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

tnoremap jk <C-\><C-n>
tnoremap <esc> <C-\><C-n>

" use mouse
set mouse=a
