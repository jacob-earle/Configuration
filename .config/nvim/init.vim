" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
syntax enable
set completeopt=menu,menuone,noselect

" Source helper files
runtime ./plug.vim

" Colors
let g:nord_disable_background = v:true
colorscheme nord
