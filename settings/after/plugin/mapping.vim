"
" Key Mapping
"

" map NERDTree to <leader>]
call janus#add_mapping('nerdtree', 'map', '<leader>]', ':NERDTreeTabsToggle<CR>')

" restore Cmd-t for tabs and use Cmd-p for ctrlp
" the original menu shortcuts are restored in gvimrc.after
if janus#is_plugin_enabled('ctrlp') && has('gui_macvim') && has('gui_running')
    unmap <D-t>
    iunmap <D-t>
    call janus#add_mapping('ctrlp', 'map', '<D-p>', ':CtrlP .<CR>')
    call janus#add_mapping('ctrlp', 'imap', '<D-p>', '<ESC>:CtrlP .<CR>')
endif

" map for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" map for runinning make checks
map ; :make<CR>

" common typos
"cmap W w
"cmap WQ wq
"cmap wQ wq
"cmap Q q
"cmap Retab retab

" escape() shortcut
" vnoremap <Leader>' xi$this->escape(<ESC>pa)<ESC>V:s/;/ /<CR>/<?=<CR>
