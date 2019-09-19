" UI
set number " show numbering
let g:powerline_pycmd="py3" " run powerline in python 3 
set laststatus=2 " show powerline all the time

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

" Latex
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'zathura'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Filetype specific setting
filetype plugin on

" Plugins (with vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
