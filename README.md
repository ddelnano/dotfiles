# dotfiles
My dotfile configuration

## Todo
- Read learn vimscript the hard way
- Add abbreviations to vimrc for common mispellings
- Allow vim to save itself when switching tmux panes
- CtrlP to create new files in directories with not files? Does not currently work
- Fix pman with php files
- Make easy mapping for editing any file in this repo from vim
- Install depedencies
  - jsonlint
  - phpctags for tagbar
- Try super tab
- fzf as a replacement for ctrlp
- Try cscope
- Development help
  - php
    - [ ] Auto importing namespaces 
      - [ ] Patched [ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags)
      - [x] [importing](https://github.com/arnaud-lb/vim-php-namespace)
        - [ ] Look into autoimporting anything on the line of the cursor
    - [x] Navigate / view all methods in a file 
      - CtrlP -- :CtrlPBufTag
    - Learn to use phpcomplete.vim better
  - javascript
    - [ ] Syntastic flow linter
- Fix tmux copying issues
- Find a way to only install plugins if certain depedencies are met
  - phpcomplete fails if php is not already installed
- Understand ternjs vim plugin better, works great for browser api autocompletion but not for nodejs
- YCM
  - javascript autocompletion
  - YCM install
    - Make install on different operating systems build it correctly 
- Assign keymap to make window resizing painless
- Fix pman to show php documentation
- Make this configuration portable across OS X and Linux
- Make any config that can be used in Xcode or Jetbrains IDEs available

### Vim Plugins To Explore

This will serve as a list of useful plugins I find that I plan to eventually 
add into my vim workflow.  

- Macros
- [ ] [marvim](http://www.vim.org/scripts/script.php?script_id=2154)
- Language Support
  - [ ] HTML editing
  - [ ] CSS / SCSS
- Framework Support
  - [ ] Laravel
    - [Blade](https://github.com/jwalton512/vim-blade)
- [ ] Status line [airline.vim](https://github.com/bling/vim-airline)
- [x] Vim [Surround](https://github.com/tpope/vim-surround)
- [ ] [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [ ] [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [ ] Github Issues [github-issues.vim](https://github.com/jaxbot/github-issues.vim)
- [ ] [projectionist.vim](https://github.com/tpope/vim-projectionist)
- [x] [Targets.vim](https://github.com/wellle/targets.vim)
  - [ ] Learn more about this
  - Adds additional text objects
- [x] [commentary.vim](https://github.com/tpope/vim-commentary)
- Ctags
  - [ ] [Ctags.vim](https://github.com/vim-scripts/ctags.vim)
  - [ ] [Tagbar](https://github.com/majutsushi/tagbar)
  - [ ] [Taglist](http://vim.sourceforge.net/scripts/script.php?script_id=273)
- Navigation
  - [ ] [EasyMotion](https://github.com/easymotion/vim-easymotion)
  - [ ] [Numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
  - [ ] [vim-signature](https://github.com/kshenoy/vim-signature)
  - [ ] [Gundo.vim](https://github.com/sjl/gundo.vim)
- Search
  - [ ] [Ag.vim](https://github.com/rking/ag.vim)
  - [ ] [greplace.vim](https://github.com/skwp/greplace.vim)
  - [ ] [incsearch.vim](https://github.com/haya14busa/incsearch.vim)
  - [ ] [dash.vim](https://github.com/rizzatti/dash.vim)
- Autocompletion
  - [ ] [Super Tab](https://github.com/ervandew/supertab)
    - According to YCM is useless but check out regardless
- Tmux Integration
  - [x] [Vim tmux navigator](https://github.com/christoomey/vim-tmux-navigator)
  - [ ] [tmuxline.vim](https://github.com/edkolev/tmuxline.vim)
- Miscellaneous
  - [ ] [vim-lion](https://github.com/tommcdo/vim-lion)
  - [x] [Multiple cursors](https://github.com/terryma/vim-multiple-cursors)
  - [ ] [Editorconfig.vim](https://github.com/editorconfig/editorconfig-vim)
  - [ ] [devicons](https://github.com/ryanoasis/vim-devicons)
  - [ ] [vim-pencil](https://github.com/reedes/vim-pencil)
  - [ ] [gruvbox](https://github.com/morhetz/gruvbox)

### Tmux
- [ ] Tmux auto window resizing
- [ ] Tmux plugins
- [ ] Tmux copying to system clipboard
    - Retro groove color scheme for Vim
