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
