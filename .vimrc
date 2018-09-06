set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" PLUGINS CONFIG
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" No backup files
set nobackup

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set nowritebackup
set noswapfile
set history=100
set showcmd
set incsearch
set hlsearch
set smartcase
set ignorecase
set tabstop=4
set shiftwidth=4
set number
set list listchars=tab:\ \ ,trail:·
set timeout timeoutlen=1000 ttimeoutlen=100
set statusline=%f\ %m\ %=L:%l/%L\ C:%c\ (%p%%)
set encoding=utf-8
set autoread
set splitbelow
set splitright
set wildmenu
set lazyredraw
set showmatch
syntax on
set autoindent
set title
set nowrap
colorscheme kali
