set scrolloff=5                                   "scrolloff at some value

set incsearch                                     " Do incremental searching.
set ignorecase
set smartcase

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
vnoremap oi <esc>
nnoremap <leader>ee :Ex<cr>
nnoremap <C-S> :w<cr> 
nnoremap + <c-a>hh  
nnoremap - <c-x>hh  

"inoremap < <><esc>i

map <esc><esc> :nohlsearch<cr>
nmap <leader>y \"+y
vmap <leader>y \"+y<esc>

nnoremap <leader>o ciwtrue<esc>  
nnoremap <leader>z ciwfalse<esc>  
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

inoremap `h <c-g><esc><S-i>
inoremap `; <c-g><esc><s-a>;
inoremap `o <c-g><esc>la

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
