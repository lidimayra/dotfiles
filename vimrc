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

" Mappings
let mapleader = "\<Space>" " Use space key as leader.

nmap <leader>vr :vsp $MYVIMRC<cr> " Split edit vimrc vertically.
nmap <leader>so :source $MYVIMRC<cr>

" Move between wrapped lines without skipping it
nmap j gj
nmap k gk

" Swap 0 and ˆ in order to make easier to move to the first non-whitespace
" character
nnoremap 0 ^
nnoremap ^ 0

" Enable use jk (and kj) to escape from insert mode
imap jk <esc>
imap kj <esc>

" Specify plugins directory
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jgdavey/tslime.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

call plug#end()

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" tslime.vim open vim-rspec results in another tmux pane
let g:rspec_command = 'call Send_to_Tmux("bin/rspec {spec}\n")'
