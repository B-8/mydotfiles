" Plugins {{{

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xuhdev/vim-latex-live-preview'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}



" Basics {{{

let g:airline_theme='zenburn'

syntax enable
colorscheme delek

set autoread
set encoding=utf-8
set fileencoding=utf-8
set foldlevelstart=0
set foldmethod=marker
set expandtab
set textwidth=80
set wrap

set background=dark
set cursorline
set hlsearch
set number
set relativenumber
set ruler


" }}}



" Mappings {{{                                                                               



" }}}
