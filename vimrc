set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Raimondi/delimitMate'
Plugin 'matchit.zip'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Sort window navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Sort out tabs as spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Sort folding 
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

autocmd Filetype html setlocal ts=2 sts=2 sw=2 
autocmd Filetype css setlocal ts=2 sts=2 sw=2 
autocmd Filetype js setlocal ts=2 sts=2 sw=2 
autocmd Filetype python setlocal ts=4 sts=4 sw=4 

" Encoding
set encoding=utf-8

set cindent

" Searching
set hlsearch
set incsearch
highlight MultiSearch2 guibg=red guifg=white

let python_highlight_all=1

" Buffer status line
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Mac Keyboard weirdness
imap £ #
nmap £ #
map £ #

" Mappings
let mapleader = "\<Space>"
nmap <Leader>c :set cursorcolumn! cursorline!<CR>
nmap <Leader>v :set list!<CR>
nmap <Leader>n :set number!<CR>
nmap <Leader>m :set relativenumber!<CR>

set incsearch

" Colours
set background=dark
if has('gui_running')
    colorscheme evening
else
    colorscheme default
endif

" Turn off rope!
let g:pymode_rope=0
" Lets be generous with the max line length
let g:pymode_options_max_line_length=90

set noerrorbells visualbell t_vb=

highlight BadWhitespace ctermbg=red guibg=darkred
