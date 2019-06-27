
" +------------------------------------------------+
" |                  Key Summary                   |
" +------------------------------------------------+

" -- Navigate within windows ----------------------- F1, F2
" -- Maximizer ------------------------------------- F3
" -- Highlight ------------------------------------- F4
" -- NERDTree -------------------------------------- F5
" -- Paste ----------------------------------------- F6
" -- Syntastic ------------------------------------- F9


" :D
" +------------------------------------------------+
" |                     IMPROVED                   |
" +------------------------------------------------+
" Ken's vim-for-server(https://github.com/wklken/vim-for-server)

syntax on
set nocompatible
set hidden
set autoread                    " reload files when changed, i.e. via `git checkout`
set shortmess=atI               " ??
set mouse=nicr
set clipboard=unnamed
set ttymouse=xterm
set ttyfast
set lazyredraw
set backspace=indent,eol,start  " make that backspace key work the way it should
set whichwrap+=<,>,h,l
set history=2000                " how many lines of history VIM has to remember
set autoindent
set shiftwidth=4
set magic                       " for regular expressions turn magic on
set nobackup                    " do not keep a backup file
set visualbell t_vb=            " turn off error beep/flash
set t_vb=
set tm=500
set expandtab                   " expand tabs to spaces
set smarttab
set shiftround
set modeline
"set tw=80
set showcmd
set guifont=Courier\ New\ 15    "for GVIM font
set modeline

set title                       " change the terminal title
set novisualbell                " turn off visual bell
set noerrorbells                " don't beep

set ruler                       " show the current row and column
set number                      " show line numbers
set nowrap
set showcmd                     " display incomplete commands
set showmode                    " display current modes
set showmatch                   " jump to matches when entering parentheses
set matchtime=2                 " tenths of a second to show the matching parenthesis

"set cursorcolumn
set cursorline
set background=dark
colorscheme ron

" -- status line
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2   " Always show the status line - use 2 lines for the status bar
set scrolloff=7                 " keep 3 lines when scrolling


" -- gg and G keep column if possible just like j/k
set nostartofline

" -- search
set incsearch

" -- encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B


":D
" +------------------------------------------------+
" |                     FILETYPE                   |
" +------------------------------------------------+

filetype on
filetype plugin on
filetype indent on
au BufNewFile,BufRead *.md set filetype=txt

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd FileType gnuplot setlocal commentstring=#\ %s


autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    " -- .sh
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    " -- python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python3")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc


" +------------------------------------------------+
" |                   KEY-MAP                      |
" +------------------------------------------------+

" -- LEADER: space instead of comma
let mapleader   = ' '
let g:mapleader = ' '

" -- VISUAL: keep selection after indentation change
vnoremap < <gv
vnoremap > >gv

" -- VISUAL: visual line movement by default - great tip!
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j


" -- WINDOW: switch among windows faster - great tip!
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" -- TAB: switch tab 
nnoremap <Leader>h gT
nnoremap <Leader>l gT

" -- TAB: switch tab (Or should I use buffers?)
nnoremap H :bp<CR>
nnoremap L :bn<CR>

" -- Learn VIM by making habits
" -- http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
" -- Level 0
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" -- Level 1
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>

" kj for Esc
inoremap kj <Esc>
nnoremap <leader><C-r> :source $MYVIMRC<cr>


" -- Navigate within windows ----------------------- F1, F2
nnoremap <F1> <C-w>w
nnoremap <F2> <C-w>W

" -- Highlight ------------------------------------- F4
nnoremap <F4> :set hls! <cr>

" -- hit '/' highlights then enter search mode
nnoremap / :set nohls<cr>/

" -- Paste ---------------------------------------- F6
"nnoremap <F6> :set paste!<CR>
"inoremap <F6> <Esc>:set paste!<CR>a
set pastetoggle=<F6>
au InsertLeave * set nopaste


":D     ::user
" +------------------------------------------------+
" |                     USER                       |
" +------------------------------------------------+

" forget sudo?
" cmap w!! w !sudo tee >/dev/null %
" nnoremap <Leader>W :w !sudo tee % > /dev/null
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" -- remove empty lines
nnoremap <leader>E :g:^\s*$:d<Enter>

" -- multiline replace
vnoremap <leader>r xgvI

" -- insert date & time
nnoremap <leader>date a<C-R>=strftime("%c")<CR><Esc>

" -- quote around
nnoremap <leader>" viw<esc>hbi"<esc>lel"
vnoremap <leader>" <esc>`<i"<esc>`>a"
vnoremap <leader>' <esc>`<O"""<esc>`>o"""

