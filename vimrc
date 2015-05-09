set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Sort out tabs as spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Encoding
set encoding=utf-8

" Searching
set hlsearch
highlight MultiSearch2 guibg=red guifg=white

" Buffer status line
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Mac Keyboard weirdness
imap £ #

" Mappings
nmap <Leader>c :set cursorcolumn! cursorline!<CR>
nmap <Leader>v :set list!<CR>
nmap <Leader>n :set number!<CR>

" Colours
set background=dark
if has('gui_running')
    colorscheme evening
else
    colorscheme default
endif

" Turn off rope!
let g:pymode_rope=0
