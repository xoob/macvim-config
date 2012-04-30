"
" Additional Plugin Settings
"

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '^\.\|\~$',
    \ }

" TODO: add snipmate autocomplete for acp
" http://www.vim.org/scripts/script.php?script_id=1879

"
" Tagbar
"

let g:tagbar_type_php  = {
    \ 'ctagstype' : 'php',
        \ 'kinds' : [
            \ 'f:functions',
        \ ]
    \ }

let g:tagbar_ctags_bin = "/usr/local/bin/ctags"     " hardcode path to ctags
let g:tagbar_singleclick = 1                        " single- instead of double-click to jump

if has('gui_running')
    autocmd BufEnter * nested :call tagbar#autoopen(0)  " auto open
endif
