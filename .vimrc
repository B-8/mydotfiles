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

let g:airline_theme='jet'

set expandtab
set nu
set relativenumber

"Python
autocmd FileType python inoremap ;i input("")
autocmd FileType python inoremap ;p print("")
autocmd FileType python inoremap ;if if * == *:<ENTER>pass

"LaTeX
autocmd FileType tex inoremap ;b \documentclass[12pt]{article<ENTER>}\begin{document}<ENTER>    \end{document}
