" If Vim Plug not present install
" Auto-Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "this is running"
  autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'    " Linting 
Plug 'ctrlpvim/ctrlp.vim'      " Fuzzy file search
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'altercation/vim-colors-solarized'  " Solarized color theme
Plug 'SirVer/ultisnips'                  " Vim snippet engine
Plug 'tpope/vim-surround'                  " Delete surrounding characters
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'ternjs/tern_for_vim'

" Test for php autocompletion
Plug 'Shougo/vimproc.vim',    { 'do': 'make'}
Plug 'Shougo/unite.vim'
Plug 'm2mdas/phpcomplete-extended'

call plug#end()
