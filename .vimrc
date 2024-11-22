" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
  autocmd!
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  augroup END
endif

" go to the start of the line
noremap H 0
" go to the end of the line
noremap L $

" save and quit
map S :w<CR>
map Q :q<CR>

imap jk <ESC>
"nmap <SPACE> :
let mapleader=","
"map R :source %<CR>

" tabs
nmap tn :tabnew<CR>
nmap tj :tabnext<CR>
nmap tk :tabprev<CR>
nmap tc :tabclose<CR>

" Split
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
nnoremap cc <C-w>c
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <up> :resize-5<CR>
map <down> :resize+5<CR>

" Indentation
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set ignorecase

" Line Numbers
set relativenumber
set number

" Undo
set undolevels=5000
set undofile
set undodir=~/.vim/undodir

" Yank to system clipboard
set clipboard^=unnamed,unnamedplus

" Highlight Current Line
set cursorline
set cursorcolumn
highlight NERDTreeFile ctermfg=14

" Vim can highlight whitespaces for you in a convenient way:
set list
set listchars=tab:>_,trail:.,extends:#,nbsp:.

" Highlight All Search Pattern
set hlsearch
" Quickly remove search highlights
nmap <F9> :nohl
