" Use Vim settings, instead of Vi.
set nocompatible
filetype on
set ff=unix
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

inoremap jk <Esc>
let mapleader = ","
nnoremap <leader>w <C-w>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>qq :qall<cr>
nnoremap <leader>qw :wqall<cr>
" Toggle paste mode
set pastetoggle=<F10>
