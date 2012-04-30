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

    augroup FileTypeDetect
        autocmd BufEnter *.phtml set syn=php
        autocmd BufEnter *.less  set syn=scss
    augroup END
endif
