set nocompatible              " be iMproved, required

syntax on

filetype off                  " required
filetype plugin on
filetype indent on

set path=.,**
set noerrorbells visualbell t_vb=
set mouse=a
set incsearch
set encoding=utf-8

" Mac Keyboard weirdness
imap £ #
nmap £ #
map £ #

" Mappings
let mapleader = "\<space>"
nmap <Leader>c :set cursorcolumn! cursorline!<CR>
nmap <Leader>v :set list!<CR>
nmap <Leader>n :set number!<CR>
nmap <Leader>m :set relativenumber!<CR>

" Colours
set background=dark
if has('gui_running')
    colorscheme evening
else
    colorscheme evening
    highlight Normal ctermbg=238
    highlight String ctermfg=211
    highlight Comment ctermfg=75
endif
highlight BadWhitespace ctermbg=red guibg=darkred

au BufNewFile,BufRead *.js,*.html,*.css
    \ set expandtab |
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
"    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

packadd minpac
call minpac#init()
call minpac#add('mhinz/vim-grepper')
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('python-mode/python-mode')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')


command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

nnoremap <C-p> :<C-u>FZF<CR>

let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
nnoremap <Leader>* :Grepper -cword -noprompt -tool rg<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <Leader>/ :Grepper -tool rg<CR>
set grepprg=rg\ -H\ --no-heading\ --vimgrep
set grepformat=$f:$l:%c:%m    

let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_indent = 1 
let g:pymode_options_max_line_length = 100
let g:pymode_options_colorcolumn = 1
let g:pymode_folding = 0
let g:pymode_virtualenv = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_lint_ignore = []
" let g:pymode_rope = 1
" let g:pymode_rope_completion = 1
" let g:pymode_rope_complete_on_dot = 1


let g:airline_powerline_fonts = 1
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
