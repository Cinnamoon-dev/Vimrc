" identation config
set tabstop=4
set expandtab
set softtabstop=4

" enable mouse click
set mouse=a

" show useful stuff
set showcmd
set showmatch
set cursorline
set cursorcolumn
set number
set title

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

" status line
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

function! HasPaste()
    if &paste
        return 'PASTE MODE '
    endif
    return ''
endfunction
