execute pathogen#infect()

" disable vi compatibility (emulation of old bugs)
set nocompatible
" set filetype detection off so that it can be force checked and enabled later
filetype off
" filetype plugin enabled with indentation
filetype plugin indent on
" security
set modelines=0
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
syntax on
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" set background
set background=dark
" set statusline
set laststatus=2
"set statusline=%f%m%r%h\ [%L]\ [%{&ff}]\ %y%=[%p%%]\ [line:%05l,col:%02v]
set statusline +=%{fnamemodify(resolve(expand('%:p')),':~')}\ %*
set statusline +=%=[%p%%]\ [line:%l,col:%v]
" set highlight search
set hlsearch
"set incremental search
set incsearch
"set case-insensitive search
set ic
set smartcase
" backspace behaviour as in other applications
set backspace=indent,eol,start
" last line
set showmode
set showcmd
" display line numbers
" set number
" let php_folding = 2        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
"let php_noShortTags = 1    "Disable PHP short tags.
" remove trailing whitespaces from all files
autocmd BufWritePre * :%s/\s\+$//e
" set mouse
" set mouse=nicr
set mouse=a

" enable NERDTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

