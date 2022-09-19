" PLUGINS {{{
call plug#begin('~/.config/nvim/plugged')
    Plug 'axvr/photon.vim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'honza/vim-snippets'

    Plug 'junegunn/goyo.vim'
 
    Plug 'preservim/nerdcommenter'
    Plug 'ferrine/md-img-paste.vim'

    Plug 'lervag/vimtex'
    Plug 'ixru/nvim-markdown'

call plug#end()

lua <<EOF
require("luasnip.loaders.from_snipmate").lazy_load()
EOF
" }}}

" SETTINGS {{{
filetype plugin on		" enable default plugins for filetypes
" set modelineexpr              " allow setting expression options from a modeline
set hidden                      " don't unload a buffer when no longer shown in a window
"set autochdir			" auto change to dir containing the opened file
set noswapfile			" self descriptive
set noshowmode
set background=dark		" self-descriptive
set clipboard+=unnamedplus	" access system clipboard
"set cursorline			" highlight screen line of the cursor
set formatoptions-=r 		" no automatic comment afert <Enter>
set hlsearch			" highlight matching pattern
set ignorecase			" ignore the case of normal letters
set incsearch			" highlight where the pattern so far typed matches
set isfname-={,}		" reckon filenames in TeX commands
set laststatus=0		" no status bar
set wrap			" do not display wraped text
set linebreak
"set number relativenumber	" show line numbers relative way
set foldcolumn=2
set path+=**			" recursive path
"set showmatch			" briefly jump to matching bracket
set smartcase			" overrides ignorecase if pattern contains upper case chars
set suffixesadd=.md		" includes .md files gf command
set termguicolors		" improved colors in terminal
set expandtab			" tab key insert spaces
set shiftwidth=4                " an indentation of 4-spaces
set tabstop=4
set shiftround
set spelllang=en_us,pt_br       " languages in which I write 
set thesaurus+=/home/benevides/resources/vim/mthesaur.txt
set completeopt=menuone,noinsert,noselect
set shortmess=Ftac
set fillchars+=foldsep:\ 
set splitbelow
set splitright
set breakindent
"set scrolloff=7
set mouse=a
set foldopen-=block          " do not open folders while jumping around with },{
set title
set noruler
set title titlestring=%<%F%=
set wildignore+=*.aux
set listchars=tab:›\ ,nbsp:␣,trail:•,precedes:«,extends:»

" STATUSLINE {{{2
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
" }}}2
"  VIMTEX {{{2
let g:vimtex_fold_enabled=0
let g:vimtex_fold_manual=1                      " set foldmethod = manual
let g:vimtex_quickfix_mode=0                    " quickfix window is never opened automatically
let g:vimtex_complete_close_braces=1            " complete braces for internal cmds
let g:vimtex_view_method = 'zathura'            " zathura for use with synctex
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" }}}2
" NETRW {{{2
"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" hide .dir
"let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" preview files in vertical split
let g:netrw_preview   = 1
let g:netrw_alto = 0
let g:netrw_winsize   = 30
" }}}2

if has('nvim')
    tnoremap <M-h> <c-\><c-n><c-w>h
    tnoremap <M-j> <c-\><c-n><c-w>j
    tnoremap <M-k> <c-\><c-n><c-w>k
    tnoremap <M-l> <c-\><c-n><c-w>l
endif

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1

"let g:fzf_layout = { 'down': '30%' }

let g:goyo_width = 79

" markdown
let g:markdown_fenced_languages=['tex', 'sh']


let g:tex_flavor='latex'
let g:fleetingbox = "/home/benevidesh/Inbox/"

command! NewZettel :execute ":e" fleetingbox . strftime("%Y%m%d%H%M%S") . ".md"

nnoremap <leader>nz <Cmd>NewZettel<cr>

nnoremap <leader>ww :update<CR>
" }}}

" MAPPINGS {{{

" use <Space> as leader
let mapleader=" "

nnoremap <leader>; :

" insert mode {{{2

" <Tab> triggers completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" <Enter> for confirm completion
inoremap <expr> <Enter> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <silent> <F9> <Cmd>set wrap!<cr>
"}}}2

" edit (go to) new file
nnoremap <silent><leader>gf :e <cfile><cr>

" go to file at specific line
nnoremap <silent><leader>gl gF

" find file
nnoremap <leader>fe :find<Space>
nnoremap <silent><leader>ff :vert sfind <cfile><cr>
nnoremap <leader>sf :vert sfind<Space>

" Q to format lines 
nnoremap Q gqip

nnoremap <silent> j gj
nnoremap <silent> k gk

" edit/source init.vim
nnoremap <silent> <leader>ev :split $MYVIMRC<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>

" list buffers: to fly between them
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <leader>B :ls<cr>:vert<space>sb<space>

" alternate
nnoremap <silent><backspace> :b#<cr>

" Go to the previous location
nnoremap [q :cprev<CR>

" save as super user: not working
"cnoremap w!! w !sudo tee > /dev/null %

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

nnoremap <silent> <F6> :set<space>spell!<cr>
nnoremap <silent> <F9> :set wrap!<cr>
nnoremap <silent> <F10> <Cmd>set number!<Bar>set relativenumber!<cr>
nnoremap <silent> <F11> :Goyo 80<cr>

" VIM-SNIPPETS {{{2
imap <silent><expr> <C-j> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-j>' 
"}}}2
"}}}

" ABREVIATIONS {{{
iabbrev <silent> ts <C-r>=strftime("%Y%m%d%H%M")<cr>
iabbrev <silent> tl <C-r>=strftime('[%Y-%m-%d %H:%M]')<cr>
" }}}

" AUTOCOMMAND {{{
autocmd! BufRead,BufNewFile *todo.txt set breakindentopt=shift:5 laststatus=0
autocmd! BufRead,BufNewFile *.tex set conceallevel=2
autocmd! BufRead,BufNewFile *.md syn match  htmlH2  /TODO/
autocmd! FileType markdown nmap <silent> <localleader>i <Cmd>call mdip#MarkdownClipboardImage()<CR>
autocmd! FileType markdown nmap <silent> <localleader>i <Cmd>call mdip#MarkdownClipboardImage()<CR>
" }}}

" UI {{{

colorscheme antiphoton
hi mkdHeading guifg=#cdcdcd

"}}}

" vim:foldmethod=marker:foldlevel=0
