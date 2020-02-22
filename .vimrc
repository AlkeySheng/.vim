set nocompatible              " be iMproved, required
let mapleader=" "
set encoding="utf-8"
set termencoding="utf-8"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
filetype off                  " required
syntax on
set number
set relativenumber
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'mbbill/undotree'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plugin 'vimwiki/vimwiki'
Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plugin 'junegunn/goyo.vim' " distraction free writing mode
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
call vundle#end()            " required
filetype plugin indent on    " required

map ff :NERDTreeToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ===
" " === ale
" " ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>

" ===
" === MarkdownPreview
" ===

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

map <LEADER>tm :TableModeToggle<CR>

let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

noremap <LEADER>gy :Goyo<CR>

let g:airline_theme='atomic'
nnoremap W 5k
nnoremap E 5j

map <C-l> :set splitright<CR>:vsplit<CR>
map <C-h> :set nosplitright<CR>:vsplit<CR>
map <C-k> :set nosplitbelow<CR>:split<CR>
map <C-j> :set splitbelow<CR>:split<CR>

map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map <right> :vertical resize-5<CR>
map <left> :vertical resize+5<CR>
map <up> :res -5<CR>
map <down> :res +5<CR>

map tt :tabe<CR>
map tj :+tabnext<CR>
map tk :-tabnext<CR>
