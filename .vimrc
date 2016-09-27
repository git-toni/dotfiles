runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
execute pathogen#helptags()
set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin indent on
set number 
syntax on
set mouse=a

"" ADD A line to diferently indented blocks of code
set list lcs=tab:\|\ 
""set list lcs="    " :\|\ 

let mapleader=","
" Fast saving
nmap <leader>w :w!<cr>

"" DO NOT SAVE SWAPS IN THE SAME DIRECTORY
""set backupdir=~/vimtmp
""set swapfile
""set dir=~/vimtmp
set nobackup
set nowritebackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Shortcuts for changing tab
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt

" Be smart when using tabs ;)
set smarttab
set expandtab
" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=220

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2


""CTRLP mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
hi Folded ctermbg=darkgrey
"Autosave folding state at quit
au BufWinLeave * mkview
au BufWinEnter * silent loadview

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"

"Splits configuration
set splitbelow  
set splitright
set wildignore+=*/.git/*,*/node_modules,*/bower_components

"Max out the height of the current split   ------  ctrl + w _
"Max out the width of the current split------ ctrl + w |
"Normalize all split sizes, which is very handy when resizing terminal-------- ctrl + w =
"Swap top/bottom or left/right split ------ Ctrl+W R
"Break out current window into a new tabview ---------- Ctrl+W T
"Close every window in the current tabview but the current one  -------  Ctrl+W o

"AUTOCLOSE LINE WITH semicolon or whatever char
"inoremap <leader>; <C-o>A;
"inoremap ;<cr> <end>;<cr>
"inoremap .<cr> <end>.
"inoremap ;;<cr> <down><end>;<cr>
"inoremap ..<cr> <down><end>.

inoremap <leader>; <C-o>A;

" Toggle PASTE MODE so pasting behaves normally
set pastetoggle=<F10>
