"
" Status Line
"

if has("statusline")
    set statusline=%f\       "tail of the filename

    set statusline+=%m       "modified flag
    set statusline+=%r       "read only flag
    set statusline+=%y       "filetype
    set statusline+=\ 

    "display a warning if file encoding isnt utf-8
    set statusline+=%#warningmsg#
    set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
    set statusline+=%*

    "display a warning if fileformat isnt unix
    set statusline+=%#warningmsg#
    set statusline+=%{&ff!='unix'?'['.&ff.']':''}
    set statusline+=%*

    " set statusline+=%{fugitive#statusline()}

    set statusline+=%#error#
    set statusline+=%{StatuslineTabWarning()}
    set statusline+=%*

    set statusline+=%#warningmsg#
    " set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    set statusline+=%=       "left/right separator

    set statusline+=%{StatuslineSyntaxGroup()}\ 

    set statusline+=%c,      "cursor column
    set statusline+=%l/%L\ \ "cursor line/total lines

    "recalculate the tab warning flag when idle and after writing
    autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
endif

" Tab warning message
" return '[wrong-expand-tab]' if &et is set wrong,
"        '[mixed-tabs-spaces]' if spaces and tabs are used to indent
"        or an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let b:statusline_tab_warning = ''

        if !&modifiable
            return b:statusline_tab_warning
        endif

        let tabs = search('^\t', 'nw') != 0

        "find spaces that arent used as alignment in the first indent column
        let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed tabs and spaces]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[expand-tab]'
        endif
    endif

    return b:statusline_tab_warning
endfunction

" Display syntax highlight group
function! StatuslineSyntaxGroup()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction
