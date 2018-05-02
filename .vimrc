set number

syntax on

" tab preferences
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set autoindent

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" appearance
set textwidth=120
set t_Co=256
syntax on
set showmatch
set number
set comments=sl:/*,mb:\ *,elx:\ */

" key bindings
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
map <F12> <C-]>
