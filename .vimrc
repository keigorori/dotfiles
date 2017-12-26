" 行番号表示
set number

" タブ幅
set tabstop=4

" 不可視文字の可視化
set list
set listchars=tab:>-

" 折り返し
set nowrap

" 検索時に大文字小文字を区別しない
set ignorecase

" カラースキーマ
"colorscheme darkblue
"syntax on


" プラグインはdein.vimで管理する
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein/')
  call dein#begin('~/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')

  call dein#add('justmao945/vim-clang')
  call dein#add('vim-scripts/Conque-GDB')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
