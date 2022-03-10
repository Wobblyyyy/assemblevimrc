" plugin time!
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'rhysd/vim-github-support'
Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'lervag/vimtex'
Plug 'ollykel/v-vim'
Plug 'sickill/vim-monokai'
Plug 'NoorWachid/VimVLanguage'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'benwainwright/fzf-project'
Plug 'chriskempson/base16-vim'
Plug 'wakatime/vim-wakatime'
Plug 'jesseleite/vim-agriculture'
Plug 'bluz71/vim-moonfly-colors'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install --frozen-lockfile --production',
            \ 'branch': 'release/0.x'
            \ }
call plug#end()

" configure NERDTree
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDSpaceDelims = 1

" try to use project configuration for automatic formatting
" to reformat the current file, use :Neoformat
" note that this doesn't work with gradle prettier configs... very sad
let g:neoformat_try_node_exe = 1

" set up airline status line symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = ' '
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  L '
let g:airline_symbols.colnr = '  C '
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" disable folding for markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_json_syntax_conceal=0

" set up fzf color scheme to match normal color scheme
let g:fzf_colors = {
            \ 'fg':      ['#87ff00', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" configure fzf to use rg for finding files
" let me ask you this... who doesn't love ripgrep?
let $FZF_DEFAULT_COMMAND='rg --files'
let $FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
let $FZF_ALT_C_COMMAND='rg --files'
