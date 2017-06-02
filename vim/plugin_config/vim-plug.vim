" If Vim Plug not present install
" Auto-Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'  " Solarized color theme
Plug 'SirVer/ultisnips'                  " Vim snippet engine
Plug 'tpope/vim-surround'                  " Delete surrounding characters
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'wellle/targets.vim'
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'tpope/vim-vinegar'
" vim-misc is necessary for easytags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'kylef/apiblueprint.vim'
Plug 'ddelnano/implement.vim', { 'for': 'php' }
Plug 'flowtype/vim-flow', { 'for': 'javascript' }
Plug 'benekastah/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'keith/tmux.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'chase/vim-ansible-yaml'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'hashivim/vim-terraform'
Plug 'posva/vim-vue'
Plug 'rodjek/vim-puppet'

call plug#end()
