" Plugins (with vim-plug)
call plug#begin('~/.vim/plugged')

" Supplement standard vim behaviour
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree'

" For syntax checking
Plug 'dense-analysis/ale'

" For autocomplete
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'

call plug#end()

" UI
set nu rnu " show hybrid numbering
syntax on
set background=dark
colorscheme base16-material

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

let g:deoplete#enable_at_startup = 1
