"""" カーソル下の単語をperldoc
"""" : will be the word character.
set iskeyword+=:
nnoremap <expr> <C-e>pld ':Perldoc ' . expand("<cword>")
nnoremap <expr> <C-e>grp ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.pm \| cw'
