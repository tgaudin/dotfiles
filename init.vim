call plug#begin('~/.local/share/nvim/plugged')

" === Look and feel
Plug 'arzg/vim-corvine'
Plug 'fatih/molokai'
Plug 'datMaffin/vim-colors-bionik'
" Plug 'vim-airline/vim-airline'

" === Highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" === Code formatting
" Plug 'nvie/vim-flake8'
" Plug 'dense-analysis/ale'

" === Completion and snippets
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'

" === Misc
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'

call plug#end()

" Ctrlp options
nnoremap <C-b>	:CtrlPBuffer<CR>

" deoplete options
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \})

" ALE options
" let g:ale_python_flake8_options = '--max-line-length=88'
" let g:ale_linters = {
" \   'python': ['pyls', 'flake8', 'mypy', 'pylint', 'pyright']
" \}

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
colorscheme molokai

set undofile
set undodir=~/.config/nvim/undodir

set statusline=%t
set statusline+=%{&ff}
set statusline+=%h
set statusline+=%m
set statusline+=%r
set statusline+=%y
set statusline+=%c,
set statusline+=%l/%L
set statusline+=\ %P
