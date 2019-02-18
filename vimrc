set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Colorschemes
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

"turn on numbering
"set nu

syntax on
set showcmd "show command in status bar
set hlsearch "show matched pattern
set ignorecase "default to case insensitive pattern search
set history=1000
set cursorline
set ruler
set wrap "Wrap lines
set wildmenu
set wildmode=longest:full,full
" hard tab settings (noexpanded, shift = tab)
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"set relative path at bottom
set laststatus=2

"colorscheme matrix

"change python tabstop
autocmd FileType python setlocal tabstop=4

