call plug#begin('~/.local/share/nvim/plugged')

" === Look and feel
Plug 'arzg/vim-corvine'
Plug 'fatih/molokai'
Plug 'datMaffin/vim-colors-bionik'
Plug 'vim-airline/vim-airline'

" === Highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" === Code formatting
" Plug 'sbdchd/neoformat'
" Plug 'nvie/vim-flake8'
Plug 'dense-analysis/ale'

" === Writing tools
Plug 'rhysd/vim-grammarous'

" === Completion and snippets
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'

" === Misc
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'

" === Code Navigation
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" Ctrlp options
nnoremap <C-b>	:CtrlPBuffer<CR>

" vim-airline options
let g:airline#extensions#tabline#enabled = 1

" deoplete options
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \})

" ALE options
let g:ale_fix_on_save = 1
let g:ale_python_flake8_options = '--max-line-length=88'

let g:ale_fixers = {
 \ 'python': ['isort', 'black'],
 \ 'javascript': ['eslint']
 \}

let g:ale_linters = {
 \   '*': ['remove_trailing_line', 'trim_whitespace'],
 \   'python': ['flake8', 'mypy'],
 \   'markdown': ['proselint'],
 \   'text': ['proselint']
 \}


set nocompatible
set backspace=indent,eol,start
set history=2000
set showcmd
set showmode
set autoread
set hidden
set laststatus=2
set ruler
set wildmenu
set tabpagemax=40
set cursorline
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set background=dark
set title
set noswapfile
set nobackup
set nowb
set autoindent
set tabstop=4
set shiftwidth=2
set expandtab
set nowrap
set incsearch
set hlsearch
set ignorecase
set smartcase
set encoding=utf-8
set linebreak
set scrolloff=3
set sidescrolloff=5
syntax enable
set confirm
set nomodeline
set signcolumn=yes:2
colorscheme molokai

set undofile
set undodir=~/.config/nvim/undodir
