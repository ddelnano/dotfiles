" Use Vim settings, instead of Vi.
set nocompatible
filetype on
set ff=unix
set relativenumber
set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

inoremap jk <Esc>
let mapleader = ","
nnoremap <leader>w <C-w>

" Allow writing files that need sudo privileges
" after opening them
cmap w!! :w !sudo tee %

" Fast editing and sourcing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" yank to EOL like it should
nnoremap Y y$

" Toggle paste mode
set pastetoggle=<F10>

" Create directories if they don't already exist
silent !mkdir -p $HOME/.vim/backup
silent !mkdir -p $HOME/.vim/swap

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Allow <C-a> for letters
set nrformats+=alpha

set backspace=indent,eol,start

" Use incremental search
set incsearch

" Add highlighted search and mapping to remove highlighting
set hlsearch
nnoremap <leader><space> :nohlsearch<cr>

" Split windows below and to the right
set splitbelow
set splitright

" Set the dictionary and spelling auto complete
" set dictionary=/usr/share/dict/words
" set complete+=k


" Allow use of the mouse
set mouse=a

" TODO: Make this able to toggle it off
" Mark a position, move to the previous it block, move to the end of the word
" and append 'only' and return to mark
command! MochaOnly execute "normal! ma?it(\<cr>ea.only\<esc>`a"
nnoremap <leader>mo :MochaOnly<cr>
