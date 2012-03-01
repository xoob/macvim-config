"
" PHP Syntax
"

let php_sql_query=0                 " no SQL syntax highlighting inside strings
let g:DisableAutoPHPFolding = 1     " no folding for PHP files

"
" PHPDocumentor Plugin
"

" Defaults
let g:pdv_cfg_Type       = "mixed"
let g:pdv_cfg_Package    = "Framework"
let g:pdv_cfg_Package    = "Webdav"
let g:pdv_cfg_Version    = "//autogen//"
let g:pdv_cfg_Author     = ""
let g:pdv_cfg_Copyright  = "Copyright (c) 2010 All rights reserved."
let g:pdv_cfg_License    = "PHP Version 3.0 {@link http://www.php.net/license/3_0.txt}"

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
" - better indenting (?) - https://github.com/2072/PHP-Indenting-for-VIm
" - open tagbar automatically
