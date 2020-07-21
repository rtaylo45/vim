
" ============================================================= "
"                        Vim settings                           "
" ============================================================= "

set nocompatible              " required
filetype off                  " required

set number " Sets number

"let python_highlight_all=1
syntax on

" Color scheme
colorscheme zenburn


set viminfo+=<300 " Sets the numer of lines to copy

"syntax enable " Enable syntax processing

set incsearch "Search as characters are entered

" turn off search highlight maps to space bar
nnoremap <space> :nohlsearch<CR>

set ruler " Shows cursset splitbelow

" Splits the screen
set splitright
set splitbelow

"split navigations
"move to the split below
nnoremap <C-J> <C-W><C-J>
"move to the split above
nnoremap <C-K> <C-W><C-K>
"move to the split to the right
nnoremap <C-L> <C-W><C-L>
"move to the split to the left
nnoremap <C-H> <C-W><C-H>

"PEP 8 standards
set tabstop=3
set softtabstop=3
set shiftwidth=3

set encoding=utf-8


" ============================================================= "
"							Plugin settings									 "
" ============================================================= "

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'petRUShka/vim-sage'

let NERDTreeIgnore=['\.pyc$', '\~$']
nmap <C-N> :NERDTreeToggle<CR>

call vundle#end()
filetype plugin indent on
