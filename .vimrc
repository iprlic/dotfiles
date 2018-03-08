set nocompatible

filetype off

" setting up vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
" plugins
Plugin 'tpope/vim-sensible'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ayu-theme/ayu-vim'

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

filetype plugin indent on
set t_Co=256
syntax on
set autoindent
set expandtab
set smarttab
set term=xterm-256color
set ignorecase
set encoding=utf-8
set number
set ruler

set splitbelow
set splitright

set tabstop=2

set hidden
set ttyfast
set showmode
set showcmd

" NERDTree
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let NERDTreeIgnore=['\.pyc$', '\~$']

set termguicolors     " enable true colors support
let ayucolor="mirage"  " for light version of theme
colorscheme ayu

"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme Zenburn
"endif


