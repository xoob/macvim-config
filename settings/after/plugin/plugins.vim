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

let g:tagbar_singleclick = 1    " single- instead of double-click to jump

" open automatically for supported files
autocmd FileType * nested :call tagbar#autoopen(0)

" only for some file types...
" autocmd FileType c,cpp nested :TagbarOpen

" reduced definition for PHP tags
