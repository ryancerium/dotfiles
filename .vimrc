set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'kien/ctrlp.vim'
" Plugin 'git://github.com/godlygeek/tabular.git'
" call vundle#end()
filetype plugin indent on

" tabstop is four spaces
set ts=4
set shiftwidth=4
" set auto-indent
set ai
" convert tabs into spaces
set expandtab
" turn off line wrapping
set nowrap
" show line numbers
set number

set directory=/tmp

syntax on
" the quote marks delineate a comment :-/
" set tags=tags;/
" map , <C-T>
" map . <C-]>
" au BufRead,BufNewFile *.build set filetype=xml
" au BufRead,BufNewFile *.config set filetype=xml
" au BufRead,BufNewFile *.target set filetype=xml
au BufRead,BufNewFile *.gradle set filetype=groovy
