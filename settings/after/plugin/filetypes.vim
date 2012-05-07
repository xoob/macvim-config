"
" File Types
"

if has('autocmd')
    au FileType help set nolist  " don't highlight whitespace in help
    au FileType git  set nolist  " don't highlight whitespace in git

    augroup OmnifuncAutocomplete " autocomplete
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
        autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
        autocmd FileType c set omnifunc=ccomplete#Complete
        autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
        set completeopt+=menuone
    augroup END

    autocmd BufNewFile,BufRead *.phtml set filetype=php
    autocmd BufNewFile,BufRead *.phtml setlocal sw=2 ts=2
    autocmd BufNewFile,BufRead *.phtml let b:PHP_outdentphpescape = 1

    autocmd FileType html setlocal sw=2 ts=2
    autocmd FileType css  setlocal sw=2 ts=2
    autocmd FileType less setlocal sw=2 ts=2
endif
