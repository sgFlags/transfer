set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

"==================================================
"taglist
"==================================================
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
noremap <F8> :TlistToggle<CR>

"==================================================
"vundle
"==================================================
set nocompatible              
filetype off                

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            
filetype plugin indent on    

"==================================================
"nerdtree
"==================================================
noremap <F12> :NERDTreeToggle<CR>

"==================================================
"Youcompleteme
"==================================================
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:clang_user_options='|| exit 0'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

set tabstop=8
set softtabstop=0 noexpandtab
set shiftwidth=8
