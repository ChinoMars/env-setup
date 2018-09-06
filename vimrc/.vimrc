"""""""""""""""""""""""""""""""""""""""
" Basic settings
"""""""""""""""""""""""""""""""""""""""
set number
set tabstop=4
set shiftwidth=4
set mouse=a
set autoindent
set cindent

" expand tab to 4 spaces
set expandtab

set tags=./tags
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""
" Vundle Settings
"""""""""""""""""""""""""""""""""""""""
" How to install Vundle
"""""""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim 
" Vundle plugin begin
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'vim-scripts/indentpython.vim'

" code auto-complete
"""""""""""""""""""""""""""""""""""""""
Bundle 'Pydiction'
Plugin 'Valloric/YouCompleteMe'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif " close preview window after leaving insert mode
"let g:ycm_collect_identifiers_from_tags_files = 1      " open tags search engine of YCM
"let g:ycm_collect_identifiers_from_comments_and_strings = 1    " complete search from comments and strings
let g:ycm_seed_identifiers_with_syntax = 1              " syntax key-word complete
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>'] " in case tab is blocked
"let g:ycm_key_list_select_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " complete in comments
let g:ycm_complete_in_strings = 1                           " complete in strings
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " disable syntax check

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

" indent_guide
"""""""""""""""""""""""""""""""""""""""
"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1 " start when vim started
"let g:indent_guides_start_level = 1           " enable indent level guide lines
"let g:indent_guides_guide_size = 1            " set guide line width
"let g:indent_guides_tab_guides = 0            " don't guide tab

call vundle#end() 
" Vundle plugin end
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""
" insert file header
"""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.py exec ":call SetHeader()"
" define function SetHeader, insert file header
func SetHeader()
    if &filetype == 'python'
        call setline(1, "#!/usr/bin/python")
        call append(line("."), "")
        call append(line(".")+1, "")
    endif
    " auto go to end of a file when open a file
    autocmd BufNewFile * normal G
endfunc
"autocmd BufNewFile *.py,*.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
"""定义函数SetTitle，自动插入文件头 
"func SetTitle() 
"    "如果文件类型为.sh文件 
"    if &filetype == 'python' 
"        call setline(1, "#########################################################################") 
"        call append(line("."), "# File Name: ".expand("%")) 
"        call append(line(".")+1, "# Created Time: ".strftime("%c")) 
"        call append(line(".")+2, "#########################################################################") 
"        call append(line(".")+3, "#!/usr/bin/python") 
"        call append(line(".")+4, "") 
"    endif
"
"    autocmd BufNewFile * normal G
"endfunc

"""""""""""""""""""""""""""""""""""""""
" keyboard cmd
"""""""""""""""""""""""""""""""""""""""
" select all and copy all
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
" ctrl + c to copy
vmap <C-c> "+y


"""""""""""""""""""""""""""""""""""""""
" other settings
"""""""""""""""""""""""""""""""""""""""
" file changed auto load to file
set autoread

" share clipboard
set clipboard=unnamed

" auto write
set autowrite

" set ruler
set ruler


