set nocompatible
filetype indent plugin on

" enable syntax highlighting
syntax on

set t_Co=256

colo desert
set mouse=a
set ruler
set number
set hlsearch
set ignorecase
set incsearch

set wildmenu

" activate confirmation dialog instead of failing a command
set confirm

" activate visual que instead of sound
set visualbell

" start scrolling when X lines are reached to the bottom
set scrolloff=5

" ###### User mappings

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

nnoremap <C-Right> :vsp<C-Right>
nnoremap <C-Up> :sp<C-Up>

" Remember the last cursor position in a file
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Close preview split when completion is done
if exists('#CompleteDone')
    autocmd CompleteDone <buffer> pclose
endif

" open/close nerdtree with Ctrl+N
map <silent> <C-n> :NERDTreeToggle<CR>
map <C-z> <NOP>

let NERDTreeIgnore = ['.vs', 'node_modules', 'bower_components']

" ###################################

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle manages vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'leshill/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'fatih/vim-go'
Plugin 'omnisharp/omnisharp-roslyn'

call vundle#end()

