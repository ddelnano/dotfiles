" source vim plug, plugin definitions and generic mappings
source $DOTFILES/vim/plug.vim
source $DOTFILES/vim/plugin_config/vim-plug.vim
source $DOTFILES/vim/generic.vim

" If plugins have been installed
if !empty(glob("~/.vim/plugged/*"))
  for file in split(glob($DOTFILES."/vim/**/*.vim"), '\n')
    exe 'source' file
  endfor

endif

if has("nvim")
    nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif

set background=dark
" Do not change colorscheme if it isn't installed
if !empty(glob("~/.vim/plugged/*"))
  colorscheme solarized
endif
