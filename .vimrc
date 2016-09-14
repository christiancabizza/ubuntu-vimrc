" Indentation configuration
set number
set expandtab
set sw=4
set ts=4
set sts=4
autocmd FileType python set textwidth=80
set autoindent
" *************************

" *************************
func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu

com! Wprocmode call WordProcessorMode()
" *************************

" vundle configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
" *********************
"
" YouCompleteMe Configuration
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
" *********************
"
" Ultisnips configuration
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
" 
" Nerdtree Configuration
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
nnoremap <F2> :NERDTreeToggle<cr>
" *********************
"
" Colors Configuration
syntax enable
colorscheme industry 
" ********************
