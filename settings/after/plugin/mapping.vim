"
" Key Mapping
"

" map NERDTree to <leader>]
call janus#add_mapping('nerdtree', 'map', '<leader>]', ':NERDTreeToggle<CR>')

" restore Cmd+T for new tabs. map ctrlp to Cmd+P
if janus#is_plugin_enabled('ctrlp') && has('gui_macvim') && has('gui_running')
    unmap <D-t>
    macmenu &File.New\ Tab key=<D-t>
    call janus#add_mapping('ctrlp', 'map', '<D-p>', ':CtrlP<CR>')
    call janus#add_mapping('ctrlp', 'imap', '<D-p>', '<ESC>:CtrlP<CR>')
endif

" map for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" map for runinning make checks
map ; :make<CR>
