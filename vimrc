"
" Maintained By Toshiya Komoda.
"

" release autogroup in MyAutoCmd
augroup MyAutoCmd
  autocmd!
augroup END

""" NeoBundle
" vi 互換ではなくVim のデフォルト設定にする
set nocompatible
" 一旦ファイルタイプ関連を無効化
filetype off
" neobundleでプラグインを管理
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc', {
\ 'build': {
\ 'windows': 'make -f make_mingw32.mak',
\ 'cygwin': 'make -f make_cygwin.mak',
\ 'mac': 'make -f make_mac.mak',
\ 'unix': 'make -f make_unix.mak',
\ }
\}
NeoBundle 'Shougo/vimshell'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'mattn/perldoc-vim.git'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

runtime! userautoload/*.vim
