" uncomment the line below to add vim-plug plugins
" source ./plugins.vim

" identation config
set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set shiftwidth=4
set smartindent
set smarttab

" enable mouse click
set mouse=a

" show useful stuff
set showcmd
set showmatch
set cursorline
set cursorcolumn
set colorcolumn=80
set number
set relativenumber
set title
set showtabline=2
set laststatus=2
set statusline=
set statusline+=%#LineNr#
set statusline+=\ %F%m%r%h
set statusline+=\ %w
set statusline+=\ %#CursorColumn#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c

" useful configs
set nocompatible
set encoding=utf-8
set t_Co=256
set autoread
set backspace=indent,eol,start
set scrolloff=4
set clipboard+=unnamedplus
set wildmenu
set hlsearch
set incsearch

" buffer configs
set hidden
set confirm

" enable syntax processing
syntax enable

" loading filetype
filetype plugin on
filetype indent on

" choose theme
colorscheme slate

" netrw
let g:netrw_keepdir = 0
let g:netrw_winsize = 20
" You can temporarily see the banner by using I
let g:netrw_banner = 0
let g:netrw_liststyle= 3

" setting leader key
let mapleader = "\\"

" feature mapping
nnoremap <leader>e :Lex<CR>
nnoremap <leader>b :ls<CR>:b
nnoremap <leader>w <C-w>

" navigation mapping
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
