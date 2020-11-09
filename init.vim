set number	

set expandtab
set smarttab
set shiftwidth=3
set tabstop=3
   
" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
   Plug 'https://github.com/scrooloose/nerdtree.git'
   Plug 'https://github.com/pangloss/vim-javascript.git'
   Plug 'https://github.com/itchyny/lightline.vim'
   Plug 'https://github.com/airblade/vim-gitgutter.git'
   Plug 'qpkorr/vim-bufkill'
call plug#end()

" lightline plugin config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
