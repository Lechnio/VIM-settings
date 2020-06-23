set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'valloric/YouCompleteMe'

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

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 1 "default 1
let g:ycm_show_diagnostics_ui = 1 "default 1
let g:ycm_error_symbol = '>>' "default >>
let g:ycm_warning_symbol = '>>' "default >>
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1 "default 1
let g:ycm_complete_in_comments = 1 "default 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_log_level = 'info' "default info (debug, warning, error, critical)
let g:ycm_goto_buffer_command = 'vertical-split' "default same-buffer (same-buffer, horizontal-split, vertical-split, new-tab)
let g:ycm_filetype_whitelist = { '*': 1 } " default '*': 1
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <F6> :YcmCompleter FixIt<CR>
nnoremap <F7> :YcmCompleter GoTo<CR>

"
" VIM common
"

" No backup files
set nobackup

" No .viminfo file
let skip_defaults_vim=1
set viminfo=""

" Clear white spaces
nnoremap <F5> :%s/\ *$//g \| noh<CR>

noremap 2 <C-W>w
noremap 1 <C-W>W
noremap <Right> <C-W>w
noremap <Left> <C-W>W
noremap <Up> <PageUp>
noremap <Down> <PageDown>

set nowritebackup
set noswapfile
set history=100
set showcmd
set incsearch
set hlsearch
set smartcase
set ignorecase
set expandtab
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
set autoindent
set title
set nowrap
syntax on
colorscheme eyeSaver
