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
set number
set title

" enable syntax processing
syntax enable

" choose theme
colorscheme atom-dark-256 

" append close
inoremap { {}<Left>
inoremap {{ {
inoremap {} {}

inoremap ( ()<Left>
inoremap (( (
inoremap () ()
