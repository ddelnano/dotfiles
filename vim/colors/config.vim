if &t_Co == 256
  let g:solarized_termcolors=256
  let g:solarized_visibility =  "low"
  " set background=dark is in last line of vimrc since I couldn't
  " figure out how to get it to apply in this file.
  colorscheme solarized
endif
syntax on
