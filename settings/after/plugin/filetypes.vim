"
" File Types
"

if has('autocmd')
    au FileType help set nolist  " don't highlight whitespace in help
    au FileType git  set nolist  " don't highlight whitespace in git
endif

autocmd BufEnter *.phtml set syn=php
