"
" Interface & Colors
"

if has('gui_running')
    " for MacVim
    colorscheme xcode-dusk
    colorscheme xcode-midnight

    set guifont=Menlo\ Regular:h11
    set guifontwide=Menlo\ Bold:h11

    set guioptions-=T     " hide toolbar
    set guioptions-=rL    " hide scrollbars
    set showtabline=2     " always show tabs

    set transparency=2    " subtle transparency

    " remove Buffers menu
    aunmenu Buffers

    " remove Themes menu
    aunmenu Themes
else
    " for Terminal
    colorscheme desert
    set background=dark
endif

set numberwidth=3         " line number column width 
set showcmd               " show (partial) command keys in the status line
set splitbelow            " a new window is put below the current one
set splitright            " a new vertical window is put to the right of the current one
