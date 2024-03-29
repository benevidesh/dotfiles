" PLUGINS {{{
call plug#begin('~/.config/nvim/plugged')
    Plug 'lervag/vimtex'
    Plug 'preservim/vim-markdown'
    Plug 'numToStr/Comment.nvim'
    Plug 'ronisbr/nano-theme.nvim'
    Plug 'folke/zen-mode.nvim'
    Plug 'freitass/todo.txt-vim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'Mofiqul/dracula.nvim'
call plug#end()
" }}}

" SETTINGS {{{
filetype plugin on

" leader
let mapleader = " "

"
" set foldcolumn=2
" set guicursor=
" set scrolloff=5
set noshowmode
set breakindent
set clipboard+=unnamedplus
set completeopt=menuone,noinsert,noselect
set expandtab
set fillchars=fold:-,foldclose:\ ,foldsep:\ ,
set foldopen-=block
set formatoptions-=r
set hidden
set ignorecase
set incsearch
set isfname-={,}
set laststatus=0
set linebreak
set list
set listchars=tab:›\ ,nbsp:␣,trail:•,precedes:«,extends:»
set mouse=
set nohlsearch
set noruler
set noswapfile
set path+=**
set shiftround
set shiftwidth=4
set shortmess=Ftac
set smartcase
set spelllang=en_us,pt_br
set splitbelow
set splitright
set suffixesadd=.md
set tabstop=2
set termguicolors
set thesaurus+=~/.config/nvim/thesaurus/english.txt
set dict+=~/.config/nvim/dict/signpost.txt
set title titlestring=%<%F%=
set undofile
set wildignore+=*.aux
set wildignorecase
set wildmenu
set wrap

if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif

" }}}

" MAPPINGS {{{
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <leader>B :ls<cr>:vert<space>sb<space>
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <leader>sf :vert sfind<Space>
nnoremap <leader>ww :update<CR>
nnoremap <silent> <leader>sw :set wrap!<cr>
nnoremap <silent> <leader>ts :set<space>spell!<cr>
nnoremap <silent> <F10> <Cmd>set number!<Bar>set relativenumber!<cr>
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
nnoremap <silent><leader>fs :vert sfind <cfile><cr>
nnoremap <silent><leader>gf :e <cfile><cr>
nnoremap <silent><leader>gl gF
nnoremap <silent><leader>w <C-w>
nnoremap <silent><leader>x <cmd>!chmod +x %<CR>
nnoremap Q gqip
nnoremap [q :cprev<CR><CR>
nnoremap ]q :cnext<CR><CR>
nnoremap <silent><leader>p :Sex.<enter>
nnoremap <leader>zq :q!<enter>
nnoremap <leader>; :
nnoremap <silent><leader>tz :ZenMode<enter>
" move blocks of text up and down
vnoremap <silent><A-j> :m '>+1<CR>gv=gv
vnoremap <silent><A-k> :m '<-2<CR>gv=gv
" NOTES
nnoremap <leader>[ :NotesGrep<space>
nnoremap <leader>n   :FZF /home/benevidesh/3R/journal/nts/<cr>
nnoremap <leader>.  :FZF ~/.config/<cr>
nnoremap <leader>fe  :FZF ~<cr>
nnoremap <leader>ff  :exe ":FZF " . expand("%:h")<CR>
nnoremap <leader>cn :NOTE
" }}}

" ABREVIATIONS {{{
iabbrev <silent> tz <C-r>=strftime("%Y%m%d%H%M%S")<cr>
iabbrev <silent> ts <C-r>=strftime("%Y-%m-%d")<cr>
iabbrev <silent> tl <C-r>=strftime('[%Y-%m-%d %H:%M]')<cr>
" }}}

" COLOR {{{
set background=light
colorscheme dracula-soft
" }}}

" CMDS {{{
command! -nargs=+ NotesGrep execute 'silent grep! <args> ~/3R/journal/nts/**'
command! -nargs=1 NOTE :exe "split " . fnameescape("~/3R/journal/nts/inbox/<args>.md")
" }}}

" AUTOCMDS {{{
"
" }}}

" LUA {{{
let g:coq_settings = { 'auto_start': 'shut-up' }
lua <<EOF
require('plugins')
EOF
" }}}
