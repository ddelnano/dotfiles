set statusline+=\ %#ErrorMsg#%{neomake#statusline#QflistStatus('qf:\ ')}

autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_place_signs = 1
let g:neomake_open_list = 2

let g:neomake_php_enabled_makers = ['php']

" Look for local eslint and if not use globally installed one
let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe=substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

let g:neomake_go_enabled_makers = ['go']
