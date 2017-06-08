" If Vim Plug not present install
" Auto-Install vim-plug
source $HOME/.vim/autoload/plug.vim

" TODO: PluginInstall does not happen right after downloading vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  
  autocmd VimEnter * PlugInstall
endif

" source $DOTFILES/vim/generic.vim
" source $DOTFILES/vim/project.vim
" "Solarized theme
" source $DOTFILES/vim/colors/config.vim

for file in split(glob($DOTFILES."/vim/**/*.vim"), '\n')
  exe 'source' file
endfor

if has("nvim")
    nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif

" TODO: Figure out why this needed to be at the end
" of the vimrc to work properly.  background was left to
" light when this was in vim/colors/config.vim
set background=dark
