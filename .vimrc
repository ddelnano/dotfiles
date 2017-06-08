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
