let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'Townk/vim-autoclose'
call plug#end()

" identation config
set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
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
set encoding=utf-8
set t_Co=256
set autoread
set backspace=indent,eol,start
set scrolloff=4
set clipboard+=unnamedplus
set wildmenu
set hlsearch
set incsearch
set undolevels=1000

" buffer configs
set hidden
set confirm
set noswapfile

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

" autocomplete mapping
inoremap <leader><Space> <C-n>

" feature mapping
nnoremap <leader>e :20Lex<CR>
nnoremap <leader>b :ls<CR>:b

" window mapping
nnoremap <leader>w <C-w>
nnoremap <leader>wv :vs<CR>
nnoremap <leader>wh :sp<CR>

" navigation mapping
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>

