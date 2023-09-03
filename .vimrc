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
set number
set title
set showtabline=2

" useful configs
set nocompatible
set encoding=utf-8
set t_Co=256
set autoread
set backspace=indent,eol,start
set scrolloff=4
set clipboard+=unnamedplus

" enable syntax processing
syntax enable

" choose theme
colorscheme monokai

" append close
inoremap { {}<Left>
inoremap {{ {
inoremap {} {}

inoremap ( ()<Left>
inoremap (( (
inoremap () ()

inoremap [ []<Left>
inoremap [[ [
inoremap [] []

inoremap " ""<Left>
inoremap "" "
inoremap "" ""

inoremap ' ''<Left>
inoremap '' '
inoremap '' ''

" status line
set laststatus=2
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %{HasPaste()}%F%m%r%h\ 
set statusline+=\ %w
set statusline+=\ %#CursorColumn#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c

function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction

function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
