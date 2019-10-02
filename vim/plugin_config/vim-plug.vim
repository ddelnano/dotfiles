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
if has("nvim")
    Plug 'benekastah/neomake'
endif
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'keith/tmux.vim'
Plug 'fatih/vim-go', { 'tag': 'v1.18', 'for': 'go' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'chase/vim-ansible-yaml'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'hashivim/vim-terraform'
Plug 'posva/vim-vue'
Plug 'rodjek/vim-puppet'

call plug#end()
