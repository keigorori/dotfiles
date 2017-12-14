" 行番号表示
set number

" 検索時に大文字小文字を区別しない
set ignorecase

" teratermからカラー表示
set term=builtin_linux
set ttytype=builtin_linux

" カラースキーマ
colorscheme darkblue
syntax on


" プラグインはdein.vimで管理する
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/keigo/.vim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/keigo/.vim/dein/')
  call dein#begin('/home/keigo/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/keigo/.vim/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('justmao945/vim-clang')
  call dein#add('Shougo/neomru.vim')

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
