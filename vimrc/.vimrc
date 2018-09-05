set number
set tabstop=4
set shiftwidth=4
set mouse=a
set autoindent
set cindent

set tags=./tags
set encoding=utf-8

"================Vundle Settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"=============== Vundle plugin begin
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'

" code auto-complete
"""""""""""""""""""""""""""""""""""""""
Bundle 'Pydiction'
Plugin 'Valloric/YouCompleteMe'

" code highlight
"""""""""""""""""""""""""""""""""""""""
Bundle 'Markdown'
Bundle 'Markdown-syntax'

" file tree
"""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/The-NERD-tree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

" optimize the ui
"""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
" set the color
set t_Co=256
set laststatus=2
" use fonts of powerline
let g:ariline_powerline_fonts = 1

" set on tabline
let g:airline#extensions#tabline#enabled = 1

call vundle#end()
"=============== Vundle plugin end
filetype plugin indent on
