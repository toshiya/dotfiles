
" 検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" 折り返し行に対して, j,k を通常通り振る舞わさせる
nnoremap j gj
nnoremap k gk

" Ctrl + jikl でウィンドウ間を移動.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" タブ切り替え
nnoremap <C-t>   :tabnew<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tc :tabclose<CR>

" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
" EscEscでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" vimgrep するときに候補一覧を開く
