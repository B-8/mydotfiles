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
Plugin 'scrooloose/nerdTree'
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
set hlsearch
set number
set relativenumber
set ruler

set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#635f62 guifg=fg ctermbg=Gray guifg=White gui=bold ctermfg=White
autocmd InsertLeave * highlight CursorLine guibg=#635f62 guifg=fg ctermbg=Gray guifg=Black gui=NONE ctermfg=Black

set cursorcolumn
autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Gray cterm=bold guifg=White guibg=#635f62 gui=bold
autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Gray cterm=bold guifg=Black guibg=#635f62 gui=NONE


" }}}



" Mappings {{{

perl
autocmd FileType perl inoremap ;p print "";

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())     | q | endif
map <C-n> :NERDTreeToggle<CR>

" }}}
