" General settings
set nocompatible " Don't maintain compatibility with vi

set backspace=indent,eol,start
set ruler " Show cursor position
set title " Show file title at the top of terminal window

" Display relative line numbers, with absolute number for current line
set number
set numberwidth=5
set relativenumber

" Search settings
set hlsearch " Highlight all matches. To turn it off, use :noh
set incsearch " When searching, shows patterns typed so far

" Tab settings
set shiftround
set shiftwidth=2
set tabstop=2
" Always use spaces when inserting a <Tab>, so formatting 
" won't be messed up if tabstop is changed
set expandtab 

syntax enable
filetype plugin indent on
