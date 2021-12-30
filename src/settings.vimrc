" enable syntax highlighting
syntax on

set viminfo='100,<1000,s100,h

" of course... who doesn't love vim settings?
" turn on line numbers
set number

" tabs should be four spaces
" automatically expand tabs into four spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" ai = automatic indent
" si = smart indent
set ai
set si

" line breaks at 80 characters - this is a little bit short by modern
" standards, some might prefer 120 or even more
set lbr
set tw=80

" show colored columns at 80 and 120 - this is good for making sure lines
" stay under 80 characters
set colorcolumn=80,120

" to be honest, i forget what ruler and magic do, but i'm too scared to
" turn them off...
set ruler
set magic

" don't alert the user on errors or visual stuff - those sounds are honestly
" so annoying...
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" use utf8 and unix encoding
set encoding=utf8
set ffs=unix,dos,mac

" once again... i forget...
set laststatus=2

" disable support for vi so we can use plugins
set nocompatible

" make searching less case-sensitive
set ignorecase
set smartcase

" highlight search results
set hlsearch

" search every time a character is typed
set incsearch

" don't redraw the screen while executing macros
" i'd just like to say, you can get CRAZY performance from this
" like i just tested this by doing qqjkjjkkq 100000@q and there was next
" to NO lag
set lazyredraw

" show search matches while typing
set showmatch

" set up Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" 256 color terminal
set t_Co=256
