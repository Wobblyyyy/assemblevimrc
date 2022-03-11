" alright! it's 9:54 on a thursday morning, i just finished my calc test, and
" what else is there to do but comment by nvimrc file? this is my personal
" confiuration, with comments to (hopefully) explain what's going on, so that
" when i (inevitably) forget what half (all) of this stuff does i'll have
" an easier time figuring it out. :)
"
" as another note, this is configured to work with neovim. i was having some
" issues with plain ol' vim, so we switched to neovim, and now we're here.

" enable support for vim plugins
set nocompatible

" enable syntax highlighting
syntax on

" display a bunch of info on the status line (i think)
set viminfo='100,<1000,s100,h

" disable wrapping by default
set nowrap

" auto-replace tabs with 4 spaces, smart indent, and auto indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set si

" what does lbr mean? who knows!
set lbr

" 80 char line width
set tw=80

" display guidelines at 80 and 120 chars
set colorcolumn=80,120

" not a clue what these two do but i'm scared to turn them off
set ruler
set magic

" disable visual and audial warnings
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set default encoding to utf8
set encoding=utf8
set ffs=unix,dos,mac

" change size of status line
set laststatus=2

" use smart case when searching
set smartcase

" show the last command that was executed
set showcmd

" highlight search results while searching
set hlsearch

" incrementally search
set incsearch

" don't redraw the screen while executing macros
set lazyredraw

" show search matches while searching
set showmatch

" add vundle support
set rtp+=~/.vim/bundle/Vundle.vim

" add support for 256 colors
set t_Co=256

" set relative line numbers
set number
set relativenumber

" update autocompletion results every 200 milliseconds
set updatetime=200

" set the height of the command bar to 1 line
" was previously 2 lines, but i don't like that anymore
set cmdheight=1

" don't conceal anything
" i have no idea why you would ever want to use concealing tbh
set conceallevel=0

" color the cursor's line and column
set cursorline
set cursorcolumn

" uhh...
set hidden

" use GUI colors instead of terminal colors
set termguicolors

" automatically return to the last cursor position when re-opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" set filetype to v when opening files ending with .v
au BufRead,BufNewFile *.v set filetype=v

" add autoindentation
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1

" exit if NERDTree would be the last remaining window
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" set the leader key to comma
let mapleader = ','

