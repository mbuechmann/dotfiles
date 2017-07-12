" Display line numbers
set number
" config for fzf
set rtp+=/usr/local/opt/fzf

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" Autocomplete for neovim
Plug 'Shougo/deoplete.nvim'
" Autocomplete for golang
Plug 'zchee/deoplete-go', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

" Use deoplete
let g:deoplete#enable_at_startup = 1

nmap <Tab><Tab> :NERDTreeToggle<CR>
nmap <Ctrl-t> :FZF
