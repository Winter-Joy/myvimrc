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
 

"Plugin 'Chiel92/vim-autoformat'
"Plugin 'Shougo/denite.nvim'
"Plugin 'chemzqm/todoapp.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'yonchu/accelerated-smooth-scroll'
"Plugin 'L9'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'chemzqm/wxapp.vim'
"Plugin 'codota/tabnine-vim'
"Plugin 'dense-analysis/ale'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'fatih/vim-go'
"Plugin 'glepnir/spaceline.vim'
"Plugin 'ianva/vim-youdao-translater'
"Plugin 'joonty/vdebug'
"Plugin 'kristijanhusak/vim-dadbod-ui'
"Plugin 'majutsushi/tagbar'
"Plugin 'mattn/vim-lsp-settings'
"Plugin 'mkitt/tabline.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/asyncomplete.vim'
"Plugin 'prabirshrestha/vim-lsp'
"Plugin 'sheerun/vim-polyglot'
"Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-dadbod'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'vim-scripts/khaki.vim'
"Plugin 'vim-scripts/mru.vim'
"Plugin 'vim/killersheep'
"Plugin 'zxqfl/tabnine-vim'
"plugin"Plugin 'w0rp/ale'
"Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'SirVer/ultisnips'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'airblade/vim-gitgutter'
Plugin 'airblade/vim-rooter'
Plugin 'boydos/emmet-vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'honza/vim-snippets'
Plugin 'jwalton512/vim-blade'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'posva/vim-vue'
Plugin 'rking/ag.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'spf13/vim-autoclose'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call vundle#end()
filetype plugin indent on 

execute pathogen#infect()

"sources
source ~/.vim/my_vim/function.vim
source ~/.vim/my_vim/options.vim
source ~/.vim/my_vim/map.vim
source ~/.vim/my_vim/vars.vim
"source ~/.vim/my_vim/ycm.vim
"source ~/.vim/my_vim/jump.vim
source ~/.vim/my_vim/coc.vim
source ~/.vim/my_vim/command.vim
"source ~/.vim/my_vim/db.vim
"source ~/.vim/my_vim/lsp.vim