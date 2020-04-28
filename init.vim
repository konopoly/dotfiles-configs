set number	
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3
set mouse=n

let NERDTreeWinPos=1
   
" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
   Plug 'https://github.com/scrooloose/nerdtree.git'
   Plug 'qpkorr/vim-bufkill'
   Plug 'mxw/vim-jsx'
   Plug 'pangloss/vim-javascript'
   Plug 'jiangmiao/auto-pairs'
   Plug 'junegunn/fzf', { 'dir': '~/opt/fzf' }
   Plug 'junegunn/fzf.vim'
   Plug 'vim-airline/vim-airline' 
   Plug 'vim-airline/vim-airline-themes'
   Plug 'Yggdroot/indentLine'
call plug#end()

let g:indentLine_char = '.'
