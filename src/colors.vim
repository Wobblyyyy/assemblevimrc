" use moonfly color scheme
" alternative color schemes include:
" - onedark
" - koehler (my previous go-to)
let g:airline_theme = 'moonfly'
color moonfly

" use a block cursor while in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=

" automatically change the cursor line's color based on the current mode
" when in insert mode, only the cursor's current column will be highlighted
" when not in insert mode, the cursor's column and row will be highlighted
augroup line
    autocmd!
    autocmd! InsertLeave * hi CursorLine guibg=#23007a
    autocmd! InsertEnter * hi CursorLine guibg=#312a5e
augroup END

" set up some colors!
" most of the color configuration comes from the moonfly theme
hi Normal guibg=black
hi CursorLine guibg=#23007a
hi CursorColumn guibg=#312a5e
hi ColorColumn guibg=#15734d
hi CocHintFloat cterm=NONE guibg=46 guifg=black
hi CocErrorSign cterm=NONE guibg=46 guifg=black
hi CocInfoSign cterm=NONE guibg=46 guifg=black
hi CocErrorSign cterm=NONE guibg=46 guifg=black
hi CocInfoVirtualText cterm=NONE guibg=46 guifg=black
hi CocHintVirtualText cterm=NONE guibg=46 guifg=black
hi CocErrorVirtualText cterm=NONE guibg=46 guifg=black
hi CocHintSign cterm=NONE guibg=46 guifg=black
hi CocErrorHighlight cterm=NONE guibg=46 guifg=black
hi CocHintHighlight cterm=NONE guibg=46 guifg=black
hi CocWarningHighlight cterm=NONE guibg=46 guifg=black
hi Normal guifg=#7de8aa
hi Comment guifg=#6b6b6b
hi LineNr guifg=#00ffd9

