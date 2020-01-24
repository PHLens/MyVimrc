let mapleader=' '
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set mouse=a
set cursorline
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set fileencodings=utf-8,chinese
set tabstop=4
set cindent shiftwidth=4
set backspace=indent,eol,start
autocmd Filetype c set omnifunc=ccomplete#Complete
autocmd Filetype cpp set omnifunc=cppcomplete#Complete
set incsearch
set number
set display=lastline
set ignorecase
set smartcase
"syntax on
set nobackup
set ruler
set showcmd
set smartindent
set hlsearch
exec "nohlsearch"
set cmdheight=1
set laststatus=2
set shortmess=atI
set formatoptions=tcrqn
set autoindent 
set wildmenu
set number

set scrolloff=5

set wrap
set tw=0

set relativenumber
map S :w<CR>
map Q :q<CR>
map s <nop>
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>

map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

noremap J 5j
noremap K 5k
noremap H 7h
noremap L 7l

"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%)
"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
"setlocal foldlevel=1
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'connorholyday/vim-snazzy'

"nerd tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"code complete
Plug 'ycm-core/YouCompleteMe'

"check errors
Plug 'dense-analysis/ale'

"tagbar
Plug 'majutsushi/tagbar'

"undotree
Plug 'mbbill/undotree'

"markdown

call plug#end()

"airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-c> :bd<CR>

"colorscheme snazzy
"let g:SnazzyTransparent = 1

"nerdtree
map ff :NERDTreeToggle<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"undotree
nnoremap <F5> :UndotreeToggle<cr>

"YouCompleteMe fetch file
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
"let g:ycm_python_interpreter_path = "/bin/python3"
"let g:ycm_python_binary_path = "/bin/python3"

set t_Co=256
"let g:Powerline_symbols='fancy'
