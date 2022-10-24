" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" クリップボードにコピー
set clipboard=unnamedplus

" --- 補完 ---
" タブ幅
set tabstop=4
" スマートインデント
set smartindent

" --- 検索 ---
" 検索時に大文字小文字を区別しない
set ignorecase
" インクリメンタルサーチ
set incsearch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"検索対象をハイライト
set hlsearch
" 括弧に<>も追加する(デフォルトは(),{},[]の3つ)
set matchpairs+=<:>

" --- 見た目 ---
" 行番号表示
set number
" 長い行でも折り返さない
set nowrap
" 不可視文字(タブ、空白、改行)の可視化
set list
set listchars=tab:>-
" スクロールジに表示を確保
set scrolloff=5
" シンタックスハイライト
syntax enable
" カラースキーマ
"colorscheme darkblue

" --- Keymap ---
"x キー削除でデフォルトレジスタに入れない
nnoremap x "_x
vnoremap x "_x
" Ctrl+jでエスケープ
inoremap <c-j> <esc>
vnoremap <c-j> <esc>

