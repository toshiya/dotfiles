
set tags=tags
" Show Multiple Candidate for ctags
nnoremap <C-]> g<C-]> 

au QuickfixCmdPost vimgrep cw
nnoremap <expr> <C-e>grc ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.c \| cw'
nnoremap <expr> <C-e>grcc ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.cc \| cw'
