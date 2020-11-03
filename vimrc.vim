"__        ___       _               _
"\ \      / (_)_ __ | |_ ___ _ __   | | ___  _   _
" \ \ /\ / /| | '_ \| __/ _ \ '__|  | |/ _ \| | | |
"  \ V  V / | | | | | ||  __/ | | |_| | (_) | |_| |
"   \_/\_/  |_|_| |_|\__\___|_|  \___/ \___/ \__, |
"                                            |___/

set nocompatible              " 这是必需的，去除VI一致性
runtime macros/matchit.vim
filetype off                  " 这是必需的
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf8
let mapleader="\<space>"
call vundle#begin()  
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/LeaderF'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'spf13/vim-autoclose'
Plugin 'jwalton512/vim-blade'
Plugin 'sheerun/vim-polyglot'
"Plugin 'sjl/gundo.vim'
Plugin 'ianva/vim-youdao-translater'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-rooter'
Plugin 'boydos/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'posva/vim-vue'
Plugin 'neoclide/coc.nvim'
Plugin 'L9'
Plugin 'airblade/vim-gitgutter'
"Plugin 'codota/tabnine-vim'
"Plugin 'easymotion/vim-easymotion'
""Plugin 'Shougo/denite.nvim'
""Plugin 'chemzqm/todoapp.vim'
"plugin"Plugin 'w0rp/ale'
"Plugin 'dense-analysis/ale'
"Plugin 'zxqfl/tabnine-vim'
"Plugin 'mkitt/tabline.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-scripts/khaki.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/mru.vim'
""Plugin 'yonchu/accelerated-smooth-scroll'
""Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plugin 'joonty/vdebug'
Plugin 'chemzqm/wxapp.vim'
"Plugin 'ryanoasis/vim-devicons'
""Plugin 'edkolev/tmuxline.vim'
""Plugin 'vim-scripts/indentpython.vim'
""Plugin 'nvie/vim-flake8'
""Plugin 'Chiel92/vim-autoformat'
""Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/DrawIt'

call vundle#end()
filetype plugin indent on 

execute pathogen#infect()

"sources
source ~/.vim/my_vim/function.vim
source ~/.vim/my_vim/options.vim
source ~/.vim/my_vim/map.vim
source ~/.vim/my_vim/vars.vim
source ~/.vim/my_vim/ycm.vim
source ~/.vim/my_vim/jump.vim
source ~/.vim/my_vim/coc.vim
