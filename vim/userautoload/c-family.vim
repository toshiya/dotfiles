"""" 各種定義へのジャンプ
set tags=tags
nnoremap <C-]> g<C-]> 

au QuickfixCmdPost vimgrep cw
nnoremap <expr> grc ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.c \| cw'
nnoremap <expr> grcc ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.cc \| cw'

set formatprg=uncrustify\ -c\ /home/komoda/.uncrustify.cfg\ -l\ CPP\ --no-backup\ 2>\ /dev/null
