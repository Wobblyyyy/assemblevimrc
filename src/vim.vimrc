au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au BufRead,BufNewFile *.v set filetype=v

try
    filetype plugin indent on

    " NERDTree config
    autocmd StdinReadPre * let s:std_in=1
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    let g:NERDTreeDirArrowExpandable = '>'
    let g:NERDTreeDirArrowCollapsible = '<'

    " NERDCommenter config
    " https://github.com/preservim/nerdcommenter
    let g:NERDCommentEmptyLines = 1
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDSpaceDelims = 1

    " airline config
    " in order for airline to work properly, you need to be using a font that
    " supports all of the required characters - on my laptop, i'm using
    " ubuntu mono and it works perfectly fine. unfortunately, roboto mono
    " does... NOT work perfectly fine, so yeah... anyways...
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    
    " most of this is default airline stuff
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = ' '
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''

    " by default, airline uses fancy LN and CN characters for line number and
    " column number, but i really don't like how crowded that looks
    let g:airline_symbols.linenr = '  L '
    let g:airline_symbols.colnr = '  C '

    " make sure powerline fonts are being used
    let g:airline_powerline_fonts = 1
    let g:Powerline_symbols = 'fancy'

    " and of course we need to have a matching color scheme!
    let g:airline_theme = 'onedark'
    color onedark
catch
endtry

" typing W will save the file using sudo
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

" for finding trailing whitespace
" ctrl-b automatically selects the entire file and removes any trailing
" whitespace (pretty neat, can't lie...)
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" this one is also super important - map control + forward slash to =
" the NERDCommenter command ',c ' which toggles whether the currently
" selected lines are commented or not. as an added bonus, use gv at the
" end to select the last visual selection - how lovely!
"
" also, for some reason, you need to use C-_ instead of C-/
" i'm not sure why, but this might help?
" https://vi.stackexchange.com/questions/26611/is-it-possible-to-map-control-forward-slash-with-vim
map <C-_> <leader>c<space>gv

" map ctrl+backspace to ctrl+w, this makes it function just like normal
" ctrl+backspace on a regular editor
inoremap <C-H> <C-W>

" open/close/focus NERDtree
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>

