let mapleader = ','

" most important bind by far - jk in insert mode will enter normal mode...
" i can't even explain how useful this is
inoremap jk <esc>

" capital J will scroll down 1 screen
" capital K will scroll up 1 screen
"
" capital B will jump backwards to the next (a) uppercase letter or (b)
" punctuation marking. capital W does the same, but forwards.
noremap <S-J> <C-D>
noremap <S-K> <C-U>
noremap <S-B> ?[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>
noremap <S-W> /[\t\r\nA-Z "'\[\]\(\)\{\}.,;]<cr>

" the next bunch of binds are related to selecting the contents of a pair
" of delimiters - double quotes, brackets, curly brackets, or any form of
" punctuation.
"
" o : double quotes
" p : brackets ( and )
" c : braces { and }
" n : any punctuation (regex [ .,\"\(\{])
"
" binds that start with 'n'
" - select everything in between the previous delimiter and the next
"   delimiter.
" binds that start with 'nw'
" - jump to the next open delimiter, select, and then jump to the next
"   end delimiter.
" binds that start with 'nb'
" - jump to the previous close delimiter, select, and then jump to the
"   next previous open delimiter.

noremap no ?[\"]<cr>lv/[\"]<cr>h
noremap np ?[\(]<cr>lv/[\)]<cr>h
noremap nc ?[\{]<cr>v/[\}]<cr>
noremap nn ?[ .,\"\(\{]<cr>lv/[ .,\"\(\{]<cr>h

noremap nwo /[\"]<cr>lv/[\"]<cr>h
noremap nwp /[\(]<cr>lv/[\)]<cr>h
noremap nwc /[\{]<cr>v/[\}]<cr>
noremap nwn /[ .,\"\(\{]<cr>lv/[ .,\"\(\{]<cr>h

noremap nbo ?[\"]<cr>lv?[\"]<cr>h
noremap nbp ?[\)]<cr>lv?[\(]<cr>h
noremap nbc ?[\}]<cr>v?[\{]<cr>
noremap nbn ?[ .,\"\(\{]<cr>lv?[ .,\"\(\{]<cr>h

" disable the usage of the arrow keys so that you're forced to learn how to
" use vim... muahaha
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" space once searches forwards
" space twice searches backwards
" space three times resets search highlighting
noremap <Space> /
noremap <Space><Space> ?
noremap <Space><Space><Space> :noh<cr>:echo 'Cleared search'<cr>

" make it so < and > (indentation commands) automatically select the last
" visual selection so you can change multiple levels of indentation at
" the same time
noremap > >gv
noremap < <gv

" make this more consistent with c and d commands
noremap Y y$

