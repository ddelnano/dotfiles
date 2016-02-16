" Search parent directories until tags file is found
set tags=tags;/

let g:easytags_dynamic_files = 1
let g:easytags_events = ['BufWritePost']
let g:easytags_async = 1
let b:easytags_auto_highlight = 0
let g:easytags_opts = ['--fields=+l']
let g:easytags_suppress_report = 0

" let g:easytags_suppress_ctags_warning = 1
"
" let g:easytags_languages = {
" \   'language': {
" \     'cmd': g:easytags_cmd,
" \       'args': [],
" \       'fileoutput_opt': '-f',
" \       'stdout_opt': '-f-',
" \       'recurse_flag': '-R'
" \   }
" \}
