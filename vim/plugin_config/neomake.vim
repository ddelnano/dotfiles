set statusline+=\ %#ErrorMsg#%{neomake#statusline#QflistStatus('qf:\ ')}

autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_place_signs = 1
let g:neomake_open_list = 2
let g:neomake_php_enabled_makers = ['php']
" TODO: Need to figure out how to use local checkers instead of global

" let g:neomake_javascript_jscs_maker = {
"     \ 'exe': './node_modules/.bin/jscs'
"     \ }
" let g:neomake_javascript_eslint_maker = {
"     \ 'exe': './node_modules/.bin/eslint'
"     \ }
let g:neomake_javascript_enabled_makers = ['jscs', 'eslint']
