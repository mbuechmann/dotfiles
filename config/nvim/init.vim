" Display line numbers
set number
" Hightlight current line
set cursorline
" config for fzf
set rtp+=/usr/local/opt/fzf

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
set background=light " or dark

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/yosssi/vim-ace'
Plug 'https://github.com/nanotech/jellybeans.vim'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'mhartington/nvim-typescript'
" Typescript syntax files for Vim
Plug 'leafgarland/typescript-vim'
" NeoVim/Vim plugin performing project-wide async search and replace, similar to SublimeText, Atom et al.
Plug 'eugen0329/vim-esearch'
" Asynchronous linting and make framework for Neovim/Vim
Plug 'neomake/neomake'
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
" Autocomplete for neovim
Plug 'Shougo/deoplete.nvim'
" Autocomplete for golang
Plug 'zchee/deoplete-go', { 'do': ':UpdateRemotePlugins' }
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'
" A Vim plugin for visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'

" Initialize plugin system
call plug#end()

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

nmap <Tab><Tab> :NERDTreeToggle<CR><C-w>=
nmap <Ctrl-t> :FZF

colorscheme solarized
