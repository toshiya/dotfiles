""" General Setup

" Syntax
syntax on

set ruler
set nocompatible
set number
set encoding=utf8
set fileencoding=utf-8
set noswapfile
set nowritebackup
set nobackup

"インデント関連
set tabstop=4
set autoindent
set smartindent
set expandtab
set shiftwidth=4

"" Misc Settings

" スクロールする時に下が見えるようにする
set scrolloff=5

"  ビープ音を消す
set vb t_vb=
set novisualbell
" OSのクリップボードを使う
set clipboard+=unnamed

" " 不可視文字を表示
set list

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>

" 対応括弧をハイライト表示する
set showmatch

" 対応括弧の表示秒数を3秒にする
set matchtime=3

" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap linebreak nolist

" 入力されているテキストの最大幅を無効にする
set textwidth=0

" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

" インデントをshiftwidthの倍数に丸める
set shiftround

" 補完の際の大文字小文字の区別しない
set infercase

" 文字がない場所にもカーソルを移動できるようにする
set virtualedit=all

" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden

" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen

" 小文字の検索でも大文字も見つかるようにする
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" インクリメンタルサーチを行う
set incsearch

" 検索結果をハイライト表示
:set hlsearch

" コマンド、検索パターンを10000個まで履歴に残す
set history=10000

" コマンドを画面最下部に表示する
set showcmd

"バッファを閉じる代わりに隠す(Undo履歴を残すため)
set hidden

"新しく開く代わりにすでに開いているバッファを開く
set switchbuf=useopen
