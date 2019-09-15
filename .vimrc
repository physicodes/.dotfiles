" Colours
syntax enable " enable syntax highlighting

" Spaces & Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" UI
set number " show numbering
set colorcolumn=80 " show ruler
let g:powerline_pycmd="py3" " run powerline in python 3 
set laststatus=2 " show powerline all the time

" Window Splits
set splitbelow " more natural window opening
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Nerdtree
map <C-O> :NERDTreeToggle<CR>

" Plugins (with vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'

call plug#end()
