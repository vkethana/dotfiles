"Some of the changes made in this file are from the MIT missing semester
""course and from William Lin's vimrc
call plug#begin()

Plug 'rafi/awesome-vim-colorschemes'
"Plug 'ervandew/supertab'
"Plug 'lcd047/syntastic'
"Plug 'vim-airline/vim-airline'
"Plug 'Raimondi/delimitMate'
"Plug 'bling/vim-bufferline'
Plug 'Valloric/YouCompleteMe'

call plug#end()
"let g:syntastic_cpp_compiler_options="-Wall"
set nocompatible
set si
set shortmess+=I
set number " Show line numbers.
set background=dark
set relativenumber 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
"" Always show the status line at the bottom, even if you only have one window
"open.
set laststatus=2
set backspace=indent,eol,start
"au GUIEnter * simalt ~x
set hidden
set ignorecase
set smartcase
"" This makes copy/paste in vim work like how it does in most computer
" programs. May be useful for beginners
" "set cb=unnamed 
" set incsearch
" nmap Q <Nop>
set noerrorbells visualbell t_vb=
set mouse+=a
" " Show matching brackets, parentheses, etc {}
" "set showmatch
" nnoremap <Left>  :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up>    :echoe "Use k"<CR>
" nnoremap <Down>  :echoe "Use j"<CR>
" inoremap <Left>  <ESC>:echoe "Use h"<CR>
" inoremap <Right> <ESC>:echoe "Use l"<CR>
" inoremap <Up>    <ESC>:echoe "Use k"<CR>
" inoremap <Down>  <ESC>:echoe "Use j"<CR>
"
" inoremap <Esc> DONOTUSEESCAPE
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR>
" map <Bslash> :w <CR> :!g++ -O2 -std=c++17 % -o %< && %< <CR>
" map <C-Bslash> :w <CR> :!%< <CR>
" map <M-Bslash> :w <CR> :!clang -Wshadow -Wall -fsanitize=address
" -fsanitize=undefined -D_GLIBCXX_DEBUG -g -std=c++17 -O2 % -o %< && %< <CR> "
"  This might not work if you use the header <bits/stdc++.h> in your program
inoremap jj <Esc>
"set guifont=Consolas:h14:cANSI:qDRAFT 
colorscheme gruvbox 
au BufEnter * :set tabstop=2 softtabstop=2 shiftwidth=2 
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
tnoremap <C-Left> <C-W>:tabprevious<CR>
tnoremap <C-Right> <C-W>:tabnext<CR>
