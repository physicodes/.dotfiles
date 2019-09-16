" UI
set number " show numbering
let g:powerline_pycmd="py3" " run powerline in python 3 
set laststatus=2 " show powerline all the time

" Window Splits
set splitbelow " more natural window opening
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Spellcheck
autocmd FileType text setlocal spell spelllang=en_gb
autocmd FileType markdown setlocal spell spelllang=en_gb

" Nerdtree
map <C-O> :NERDTreeToggle<CR>

" Plugins (with vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'

call plug#end()
