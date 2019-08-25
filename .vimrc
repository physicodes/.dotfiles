" Colours
syntax enable " enable syntax highlighting

" Spaces & Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in TAB when editing
set expandtab " insert spaces when TAB is pressed

" UI
set relativenumber " show relative line numbering
set colorcolumn=80 " show ruler
let g:powerline_pycmd="py3" " run powerline in python 3 
set laststatus=2 " show powerline all the time

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'Valloric/YouCompleteMe'
" Initialize plugin system
call plug#end()
