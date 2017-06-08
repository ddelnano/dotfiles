" If Vim Plug not present install
" Auto-Install vim-plug
" TODO: PluginInstall does not happen right after downloading vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  
  source $HOME/.vim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

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
colorscheme solarized
