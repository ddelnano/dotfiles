let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
    \ 'dir': 'vendor\|node_modules\|.idea\|.git'
    \}
nnoremap <leader>t :CtrlPBufTag<cr>
