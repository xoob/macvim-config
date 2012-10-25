"
" PHP Syntax
"

let php_sql_query           = 0 " no SQL syntax highlighting inside strings
let g:DisableAutoPHPFolding = 1 " no folding for PHP files
let g:PHP_outdentphpescape  = 0 " indent PHP tags as the surrounding code

"
" PHPDocumentor Plugin
"

" Defaults
let g:pdv_cfg_Type       = "mixed"
let g:pdv_cfg_Package    = ""
let g:pdv_cfg_Package    = ""
let g:pdv_cfg_Version    = ""
let g:pdv_cfg_Author     = ""
let g:pdv_cfg_Copyright  = ""
let g:pdv_cfg_License    = ""

" Whether for PHP5 code PHP4 tags should be set, like @access,... (1|0)?
let g:pdv_cfg_php4always = 0

" Whether to guess scopes after PEAR coding standards
let g:pdv_cfg_php4guess  = 0

" map ctrl+p to PhpDoc calls
inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-p> :call PhpDocSingle()<CR>
vnoremap <C-p> :call PhpDocRange()<CR>

" TODO
" - follow list of plugins at http://spf13.com/project/piv
" - fetch list of functions for syntax/php.vim from http://lerdorf.com/funclist.txt or http://svn.php.net/viewvc/phpdoc/doc-base/trunk/funclist.txt?view=co
