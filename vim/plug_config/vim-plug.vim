" If Vim Plug not present install
if empty(glob'(~/.vim/autoload/plug.vim'))
    silent ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif

Plug 'scrooloose/syntastic'    " Linting 
Plug 'ctrlpvim/ctrlp.vim'      " Fuzzy file search
