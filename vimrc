" disable vi compatibility (emulation of old bugs)
set nocompatible
" set filetype detection off so that it can be force checked and enabled later
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundles/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundles')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'elzr/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

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

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" enable NERDTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " let NERDTreeMapOpenInTab='<ENTER>'
" " let NERDTreeMapOpenInTab='\r'
" map <C-o> :NERDTreeToggle<CR>

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
set nu
" highlight LineNr ctermfg=white ctermbg=darkgrey
