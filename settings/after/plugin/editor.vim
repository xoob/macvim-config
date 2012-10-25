"
" Text Editing
"

set viminfo='100           " store marks
set viminfo+=:500          " store command history
set viminfo+=<0            " do not store registers
set viminfo+=@20           " store input line history
set viminfo+=/20           " store search term history
set viminfo+=h             " do not store 'hlsearch'

set history=500            " mucho history
set undolevels=1000        " mucho undo

set noswapfile             " no swap files
set autoread               " automatically read a file when it was modified outside of Vim

set wrap                   " wrap long lines (and disable horiz scrolling)

set nofoldenable           " display all folds open
set nohlsearch             " don't highlight search matches

set expandtab              " spaces are used instead of tabs
set tabstop=4              " a tab is four spaces
set shiftwidth=4           " an autoindent (with <<) is four spaces
set shiftround             " round to 'shiftwidth' for "<<" and ">>"

set autoindent             " set the indent of a new line
set smartindent            " be smart about it
" set indentkeys==0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\  " indentation triggers

set formatoptions+=1       " don't break a line after a one-letter word but before
set formatoptions-=o       " don't continue comments after hitting 'o' or 'O' in Normal mode.

set completeopt+=menuone   " use menu also when there is only one match

" highlight tabs and trailing spaces
set listchars+=tab:►⋅,trail:⋅

set wildignore+=.DS_Store
set wildignore+=Icon\?
set wildignore+=.settings
set wildignore+=.git*
