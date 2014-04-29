"""" カーソル下の単語をperldoc
"""" : will be the word character.
set iskeyword+=:
nnoremap <expr> pld ':Perldoc ' . expand("<cword>")

nnoremap <expr> grp ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.pm \| cw'
