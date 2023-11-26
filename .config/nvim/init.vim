" PLUGINS {{{
call plug#begin('~/.config/nvim/plugged')
    Plug 'L3MON4D3/LuaSnip'
    Plug 'honza/vim-snippets'
    Plug 'preservim/nerdcommenter'
    Plug 'ferrine/md-img-paste.vim'
    Plug 'lervag/vimtex'
    Plug 'folke/zen-mode.nvim'
    Plug 'ixru/nvim-markdown' 
    Plug 'lunacookies/vim-plan9'
call plug#end()
" }}}
"
" SETTINGS {{{
filetype plugin on

" leader
let mapleader = " "

" nerdcomment
let g:NERDSpaceDelims=1

" netrw
let g:netrw_alto = 0
let g:netrw_altv =0
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30

"
set expandtab
set listchars=tab:›\ ,nbsp:␣,trail:•,precedes:«,extends:»
set tabstop=4
set breakindent
set clipboard+=unnamedplus
set completeopt=menuone,noinsert,noselect
set fillchars=fold:-,foldclose:\ ,foldsep:\ 
" set fillchars+=eob:\ 
" set foldcolumn=2
set foldopen-=block
set formatoptions-=r
" set guicursor=
set hidden
set nohlsearch
set ignorecase
set incsearch
set isfname-={,}
set laststatus=0
set linebreak
set mouse=
set noruler
"set noshowmode
set noswapfile
set path+=**
" set scrolloff=5
set shiftround
set shiftwidth=4
set shortmess=Ftac
set smartcase
set spelllang=en_us,pt_br
set splitbelow
set splitright
set suffixesadd=.md
set termguicolors
set thesaurus+=/home/benevides/.config/nvim/mthesaur.txt
set title
set title titlestring=%<%F%=
set undofile
set wildignore+=*.aux
set wrap

" }}}
"
" MAPPINGS {{{


nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <leader>B :ls<cr>:vert<space>sb<space>
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <leader>fe :find<Space>
nnoremap <leader>nn <Cmd>NewNote<cr>
nnoremap <leader>sf :vert sfind<Space>
nnoremap <leader>ww :update<CR>
nnoremap <silent> <leader>sw :set wrap!<cr>
nnoremap <silent> <F6> :set<space>spell!<cr>
nnoremap <silent> <F10> <Cmd>set number!<Bar>set relativenumber!<cr>
nnoremap <silent> <leader>z :ZenMode<cr>
nnoremap <silent> <leader>ev :split $MYVIMRC<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> [b :bp<cr>
nnoremap <silent> ]b :bn<cr>
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent><C-j> <C-w>w
nnoremap <silent><C-k> <C-w>W
nnoremap <silent><backspace> :b#<cr>
nnoremap <silent><leader>cc :cclose<CR>
nnoremap <silent><leader>co :copen<CR>
nnoremap <silent><leader>ff :vert sfind <cfile><cr>
nnoremap <silent><leader>gf :e <cfile><cr>
nnoremap <silent><leader>gl gF
nnoremap <silent><leader>w <C-w>
nnoremap <silent><leader>x <cmd>!chmod +x %<CR>
nnoremap Q gqip
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
imap <silent><expr> <C-k> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-k>' 
nnoremap <silent><leader>p :Lexplore.<enter>
" }}}
"
" ABREVIATIONS {{{
iabbrev <silent> tz <C-r>=strftime("%Y%m%d%H%M%S")<cr>
iabbrev <silent> ts <C-r>=strftime("%Y-%m-%d")<cr>
iabbrev <silent> tl <C-r>=strftime('[%Y-%m-%d %H:%M]')<cr>
" }}}
"
" COLOR {{{
colorscheme plan9
" }}}
"
" AUTOCMDS {{{
au BufNewFile,BufRead *.jrnl set ft=jrnl
au BufNewFile,BufRead ~/02-Resources/Triquetra/jrnl/* set ft=jrnl
" }}}
"
" LUA {{{
lua <<EOF
require("plugins")
EOF
" }}}
