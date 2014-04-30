"" quickrun
let g:quickrun_config={'*': {'split': ''}}
set splitbelow
set splitright

"" vimfiler
nnoremap <Leader>e :VimFiler <CR>
let g:vimfiler_as_default_explorer = 1

"" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : ''
            \ }
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

" neosnippets
let g:neocomplcache_snippets_dir = "~/.vim/snippets"

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"""" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

"""" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" emmet
let g:user_emmet_leader_key='<C-e>'
