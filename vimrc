"vundle
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"git interface
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

call vundle#end()

syntax enable
set background=dark
colorscheme monokai


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"I don't like swap files
set noswapfile
set nobackup
set nowb

"turn on numbering
set nu
"show command in status bar
set showcmd
set history=1000
set cursorline
set ruler
set wildmenu
set wildmode=longest:full,full
"Ignore case when searching
set ignorecase
"When searching try to be smart about cases 
set smartcase
"Highlight search results
set hlsearch
"Makes search act like search in modern browsers
set incsearch 
"For regular expressions turn magic on
set magic
"Show matching brackets when text indicator is over them
set showmatch 

"No annoying sound on errors
set noerrorbells
set novisualbell

"split panes
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"Set the default file encoding to UTF-8:
set encoding=utf-8

"For full syntax highlighting:
let python_highlight_all=1
syntax on
