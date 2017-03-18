call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'isRuslan/vim-es6'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx', { 'for': [ 'jsx','javascript.jsx'] }
Plug 'mattn/emmet-vim' 
Plug 'pearofducks/ansible-vim'
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()
"" Plug 'mattn/emmet-vim' ,{ 'for': ['javascript.jsx', 'html', 'css'] }

if (has("termguicolors"))
 set termguicolors
endif
colorscheme tender
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let g:lightline = { 'colorscheme': 'tender' }

"""set background=dark
"""colorscheme solarized


set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin indent on
set number 
syntax on
syntax enable
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
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

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
set fillchars+=vert:\│
hi vertsplit ctermfg=36 ctermbg=235

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
" uses the register + AND the vim's instance for ALL yank, delete, change etx
set clipboard=unnamedplus 
let g:jsx_ext_required = 0
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}


au BufNewFile,BufRead *.ejs set filetype=html
