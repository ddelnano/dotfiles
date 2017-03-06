if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

source $HOME/Code/dotfiles/vim/generic.vim
source $HOME/Code/dotfiles/vim/project.vim

function! LanguageConfig(filename)
  let l:filename = "lang_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

function! PluginConfig(filename)
  let l:filename = "plugin_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

let &runtimepath .= ",$HOME/Code/dotfiles/vim"

source $HOME/.vim/autoload/plug.vim

"Solarized theme
source $HOME/Code/dotfiles/vim/colors/config.vim

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

colorscheme solarized
