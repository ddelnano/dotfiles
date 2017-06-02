source $DOTFILES/vim/generic.vim
source $DOTFILES/vim/project.vim
"Solarized theme
source $DOTFILES/vim/colors/config.vim

function! LanguageConfig(filename)
  let l:filename = "lang_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

function! PluginConfig(filename)
  let l:filename = "plugin_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction


source $HOME/.vim/autoload/plug.vim


augroup vimrcEx
  autocmd!

"Plugin Configuration
call PluginConfig("vim-plug")
call PluginConfig("ycm")
call PluginConfig("ultisnips")
call PluginConfig("vim-commentary")
call PluginConfig("nerdtree")
call PluginConfig("vim-php-namespace")
call PluginConfig("vim-easytags")
call PluginConfig("neomake")
call PluginConfig("fzf")
call PluginConfig("surround")
call PluginConfig("vim-flow")
call PluginConfig("pdv")

" Add in A.vim for switching between .h and .c files

augroup END
" Language Configuration
call LanguageConfig("markdown")
call LanguageConfig("yml")
call LanguageConfig("go")
call LanguageConfig("cucumber")
call LanguageConfig("javascript")

if has("nvim")
    nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif
