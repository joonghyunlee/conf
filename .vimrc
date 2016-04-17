syntax on
set ai
set cindent
set ts=4
set sw=4
set expandtab
set hlsearch

set nocompatible              " required  
filetype off                  " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required  
filetype plugin indent on    " required  

let g:ycm_autoclose_preview_window_after_completion=1  
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

au BufNewFile,BufRead *.py  
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css  
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

colorscheme default
