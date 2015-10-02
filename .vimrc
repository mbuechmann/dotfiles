set softtabstop=2 expandtab shiftwidth=2 smarttab

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle "marijnh/tern_for_vim"
Bundle 'Raimondi/delimitMate'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/ag'
Bundle 'Blackrush/vim-gocode'
Bundle 'slim-template/vim-slim.git'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-endwise.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'bling/vim-airline'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'majutsushi/tagbar'
Bundle 'qpkorr/vim-bufkill'

call vundle#end()            " required
filetype plugin indent on    " required

let g:vim_markdown_folding_disabled=1

" Custom keybindings
nmap <Tab><Tab> :NERDTreeTabsToggle<CR>
nmap <Ctrl-p> :CtrlP .

set t_Co=256
syntax on
set background=dark
colorscheme distinguished

set number

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_smart_startup_focus = 2

