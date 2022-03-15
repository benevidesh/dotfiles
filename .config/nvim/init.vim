
" PLUG {{{
call plug#begin('~/.config/nvim/plugged')

    Plug 'cormacrelf/vim-colors-github'
    Plug 'pgdouyon/vim-yin-yang'
    Plug 'junegunn/goyo.vim'

    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'lervag/vimtex'
    Plug 'freitass/todo.txt-vim'
    Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()
" }}}
"  ULTISNIPS {{{
"let g:UltiSnipsExpandTrigger = "<c-j>"          " trigger completion for utilsnips
"let g:UltiSnipsExpandTrigger="<C-space>"
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" }}}
"  VIMTEX {{{
let g:vimtex_fold_enabled=1
let g:vimtex_fold_manual=1                      " set foldmethod = manual
let g:vimtex_quickfix_mode=0                    " quickfix window is never opened automatically
let g:vimtex_complete_close_braces=1            " complete braces for internal cmds
let g:vimtex_view_method = 'zathura'            " zathura for use with synctex
"let g:vimtex_view_method = 'mupdf'
"let g:vimtex_view_general_viewer = 'evince'

" }}}
" GOYO {{{
autocmd! User GoyoEnter nested :set foldcolumn=0
autocmd! User GoyoLeave nested :source $MYVIMRC
" }}}
" SETTINGS {{{
filetype plugin on		" enable default plugins for filetypes
" set modelineexpr                " allow setting expression options from a modeline
set hidden                      " don't unload a buffer when no longer shown in a window
set autochdir			" auto change to dir containing the opened file
set noswapfile			" self descriptive
set noshowmode
set background=dark		" self-descriptive
set clipboard=unnamedplus	" access system clipboard
"set cursorline			" highlight screen line of the cursor
set formatoptions-=r 		" no automatic comment afert <Enter>
set hlsearch			" highlight matching pattern
set ignorecase			" ignore the case of normal letters
set incsearch			" highlight where the pattern so far typed matches
set isfname-={,}		" reckon filenames in TeX commands
set laststatus=0		" no status bar
"set nowrap			" do not display wraped text
set linebreak
"set number relativenumber	" show line numbers relative way
set foldcolumn=2
set path=**			" recursive path
"set showmatch			" briefly jump to matching bracket
set smartcase			" overrides ignorecase if pattern contains upper case chars
set suffixesadd=.md		" includes .md files gf command
set termguicolors		" improved colors in terminal
set expandtab			" tab key insert spaces
set shiftwidth=4                " an indentation of 4-spaces
set spelllang=en_us,pt_br       " languages in which I write 
set thesaurus+=/home/benevides/resources/vim/mthesaur.txt
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set fillchars+=foldsep:\ 
set splitbelow
set splitright

" markdown
let g:markdown_fenced_languages=['tex', 'sh']
let g:pandoc#syntax#conceal#urls=1

autocmd! BufRead,BufNewFile *todo.txt set nowrap
autocmd! BufRead,BufNewFile *.tex set conceallevel=2
autocmd! BufRead,BufNewFile *.md nnoremap <silent><leader>zn :<c-u>e<space><c-r>=strftime("%Y%m%d%H%M%S")<cr>.md<enter>:echo<space>"Note created"<cr>
autocmd! BufRead,BufNewFile *.md set filetype=pandoc

let g:tex_flavor='latex'
" }}}
" MAPPINGS {{{

" use <Space> as leader
let mapleader=" "
"let maplocalleader="'"

nnoremap : <nop>
nnoremap <leader><leader> :
vnoremap <leader><leader> :

" uses <Tab> for trigger completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" <Enter> for confirm completion
"inoremap <expr> <Enter> pumvisible() ? "\<C-y>" : "\<CR>"

" edit (go to) new file
nnoremap <silent><leader>gf :e <cfile><cr>

" go to file at specific line
nnoremap <silent><leader>gl gF

" mute highlighting after searching
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" find file
nnoremap <leader>fe :FZF<space>~<cr>
nnoremap <leader>p :FZF<space>~/.config/nvim/<cr>
nnoremap <silent><leader>ff :vert sfind <cfile><cr>
nnoremap <leader>sf :vert sfind *

" Q to format lines 
nnoremap Q gqip

" annoyyying
nnoremap <silent> j gj
nnoremap <silent> k gk

" edit/source init.vim
nnoremap <silent> <leader>ev :split $MYVIMRC<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>

" list buffers: to fly between them
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <leader>B :ls<cr>:vert<space>sb<space>

" alternate
nnoremap <silent><backspace> :bprevious<cr>

nnoremap <silent> <F6> :set<space>spell!<cr>

" search for todo.txt item with threshold date for today
nnoremap <leader>tt :vimgrep<space>'t:<c-r>=strftime('%Y-%m-%d')<cr>'<space>%<cr>

" search for todo.txt item with due date for today
nnoremap <leader>td :vimgrep<space>'due:<c-r>=strftime('%Y-%m-%d')<cr>'<space>%<cr>

" Go to the previous location
nnoremap [q :cprev<CR>

" Go to the next location
nnoremap ]q :cnext<CR>

" Show the quickfix window
nnoremap <silent><leader>co :copen<CR>

" Hide the quickfix window
nnoremap <silent><leader>cc :cclose<CR>

" cycle windows downwards
nnoremap <silent><C-j> <C-w>w

" cycle windows upwards
nnoremap <silent><C-k> <C-w>W

" windows commands
nnoremap <silent><leader>w <C-w>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

nnoremap <silent><F12> :Goyo<cr>

"}}}
" STATUSLINE {{{
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=\ %m\ 
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
" }}}
" COLORS {{{

set background=light
colorscheme github
hi VertSplit guibg=none
hi Normal guibg=none
hi FoldColumn guibg=none
hi Conceal guibg=none
hi Folded guibg=none
hi NonText guibg=none
hi EndOfBuffer guibg=none


"}}}
" NETRW {{{
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" hide .dir
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" preview files in vertical split
let g:netrw_preview   = 1
let g:netrw_alto = 0
let g:netrw_winsize   = 30
"}}}

" vim:foldmethod=marker:foldlevel=0
