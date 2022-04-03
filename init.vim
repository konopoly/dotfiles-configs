set number	

set expandtab
set smarttab
set shiftwidth=3
set tabstop=3

set mouse=a

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
   Plug 'https://github.com/scrooloose/nerdtree.git'
   Plug 'https://github.com/pangloss/vim-javascript.git'
   Plug 'https://github.com/itchyny/lightline.vim'
   Plug 'qpkorr/vim-bufkill'
   Plug 'maxmellon/vim-jsx-pretty'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   Plug 'arcticicestudio/nord-vim'
   Plug 'mattn/emmet-vim'
   Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

"colorscheme dracula

" lightline plugin config
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
