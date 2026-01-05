call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'  " Solarized color theme
Plug 'tpope/vim-surround'                  " Delete surrounding characters
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'wellle/targets.vim'
Plug 'tpope/vim-vinegar'
" vim-misc is necessary for easytags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'AndrewRadev/splitjoin.vim'
if has("nvim")
    Plug 'benekastah/neomake'
endif
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'keith/tmux.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'hashivim/vim-terraform'
Plug 'rodjek/vim-puppet'
Plug 'github/copilot.vim', {'branch': 'release'}

call plug#end()
