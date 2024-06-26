set scrolloff=5                                   "scrolloff at some value

set incsearch                                     " Do incremental searching.
set ignorecase

" Don't use Ex mode, use Q for formatting.
map Q gq

set number
set relativenumber
set colorcolumn=120
set hlsearch
filetype on
filetype indent on

let mapleader=' '

nnoremap dr d$
nnoremap <bs> ^
inoremap jk <esc>
vnoremap jkl <esc>
nnoremap <leader>ee :Ex<cr>
nnoremap <C-S> :w<cr> 

"inoremap < <><esc>i

map <esc><esc> :nohlsearch<cr>
nmap <leader>y \"+y
vmap <leader>y \"+y<esc>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

inoremap <c-h> <c-g><esc><S-i>
inoremap <c-;> <c-g><esc><s-a>;
inoremap <c-o> <c-g><esc>la

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
