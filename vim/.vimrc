" UI
set nu rnu " show hybrid numbering

" Copy and paste
set clipboard=unnamedplus

" Window Splits
set splitbelow
set splitright
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" Nerdtree
map <C-O> :NERDTreeToggle<CR>

" Filetype specific setting
filetype plugin on

" Plugins (with vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
