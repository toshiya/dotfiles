set tags=tags
" Show Multiple Candidate for ctags
nnoremap <C-]> g<C-]> 

"" ':' will be the word character.
set iskeyword+=:
"" perldoc the word under cursor.
nnoremap <expr> <C-e>pld ':Perldoc ' . expand("<cword>")
nnoremap <expr> <C-e>grp ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.pm \| cw'

nnoremap cc :QuickRun -cmdopt "-Ilib -c"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']
