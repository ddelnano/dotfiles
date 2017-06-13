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

" TODO: Figure out why this needed to be at the end
" of the vimrc to work properly.  background was left to
" light when this was in vim/colors/config.vim
set background=dark
colorscheme solarized
