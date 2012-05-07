" Neocomplcache {
    let g:neocomplcache_enable_at_startup = 1            " Use neocomplcache.
    let g:neocomplcache_enable_smart_case = 1            " Use smartcase.
    let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion.
    let g:neocomplcache_enable_underbar_completion = 1   " Use underbar completion.
    let g:neocomplcache_min_syntax_length = 1            " Set minimum syntax keyword length.
    let g:neocomplcache_enable_auto_select = 1           " AutoComplPop like behavior

    " Define dictionary.
    " let g:neocomplcache_dictionary_filetype_lists = {
    "     \ 'default'  : '',
    "     \ 'php.zend' : $HOME.'/.vimshell_hist',
    "     \ }

    " Enable heavy omni completion.
    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif
    let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
    "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

    autocmd VimEnter * call neocomplcache#enable()      " always enable
" }
 
" Tagbar {
    " only show functions in PHP
    let g:tagbar_type_php  = {
        \ 'ctagstype' : 'php',
            \ 'kinds' : [
                \ 'f:functions',
            \ ]
        \ }

    let g:tagbar_ctags_bin = "/usr/local/bin/ctags"         " hardcode path to ctags
    let g:tagbar_singleclick = 1                            " single- instead of double-click to jump

    if has('gui_running')
        autocmd BufEnter * nested :call tagbar#autoopen(0)  " auto open
    endif
" }

" Other Plugins {
    let g:NERDTreeMinimalUI = 1  " hide help notice
    let g:NERDTreeChDirMode = 2  " change CWD to root node

    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$',
        \ 'file': '^\.\|\~$',
        \ }
" }
