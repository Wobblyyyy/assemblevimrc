" no idea why this is here to be honest
inoremap <C-H> <C-W>

" the most important mapping of all: jk enters insert mode
inoremap jk <esc>

" a couple other (imo) very important mappings
" - J jumps up half a screen
" - K jumps down half a screen
noremap <S-J> <C-D>
noremap <S-K> <C-U>

" make > and < reselect last selection when changing indentation level
noremap > >gv
noremap < <gv

" make y behave more normally
noremap Y y$

" L deletes the rest of the line (cursor pos to end of line)
" H deletes the rest of the line (cursor pos to start of line)
nnoremap <S-L> v$hx"_
nnoremap <S-H> v0x"_

" N repeats the last search going backwards
" M repeats the last search going forwards
noremap <S-M> n

