" TODO: This is currently not used in favor of Neomake
" Since I had issues with Neomake working correctly this
" will be kept incase I need to reinstall Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_php_checkers = ["php"]

let g:syntastic_javascript_checkers = ["eslint", "jscs"]
let g:syntastic_javascript_jscs_exec = './node_modules/.bin/jscs'
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'

let g:syntastic_json_checkers = ["jsonlint"]
