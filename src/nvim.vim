" :W saves using sudo
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

" ctrl+b reformats the entire file (reindent and remove trailing whitespace)
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>

" space during normal mode clears search results
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" ctrl+p executes a shell command
noremap <silent><C-P> :!

" ctrl+m focuses on NERDTree
" ctrl+n toggles NERDTree
" ctrl+l jumps back to the last active tab (i.e. edit w/o closing NERDTree)
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
nnoremap <C-L> <C-W><C-W>

" fzf, rg, and history commands!
" - ctrl+f searches for files in the working directory
" - ctrl+g searches every line in every file in the working directory
" - ctrl+h searches recently opened files, regardless of directory
noremap <silent><C-F> :FZF! --delimiter / --with-nth -3..<cr>
noremap <silent><C-G> :Rg!<cr>
noremap <silent><C-H> :History!<cr>

" function to get information about the syntax group of whatever symbol
" (or group of symbols) the cursor is over right now - this is pretty much
" just useful for configuring colors
function! SynGroup()
    let l:s=synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

" ctrl+/ toggles the comment status of the current line
" also sets a marker (z) and jumps to the marker (useful when commenting
" a lot of lines in visual mode)
map <C-_> mz<leader>c<space>`z

" use coc for some cool navigation
" - gd = get definition
" - gy = get type def
" - gi = get implementation
" - gr = get references
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

" zr reloads the .nvimrc file
noremap zr :source %<cr>

" gm displays the current syntax group
noremap gm :call SynGroup()<cr>

" if the autocompletion window is visible, and tab is pressed, automatically
" navigate to the first suggestion.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" pressing enter will select the currently highlighted suggestion
inoremap <silent><expr> <cr>
            \ pumvisible() ? coc#_select_confirm()
            \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ctrl+n in insert mode will refresh autocompletion suggestions
inoremap <silent><expr> <C-@> coc#refresh()

" used for mapping ctrl+backspace
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction
