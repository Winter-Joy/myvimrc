"=========================================
" Author: zhangguojun  
if exists("b:my_options_vim")
	finish
endif
let b:my_options_vim = 1
set autoread
set t_Co=256
colorscheme darkblue
syntax enable
syntax on
"set mouse=a
set autoindent
set cindent
set smarttab
set rnu
set nu
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
"set mouseshape=i:udsizing
set so=20
set noswapfile
set cursorline
set linebreak
set foldmethod=indent
set foldlevel=0
set ruler
set showmatch
set laststatus=2
set incsearch
set smartcase
set listchars=tab:»※,trail:※
set nolist
set showcmd
set noendofline binary
set copyindent

"color
hi Comment ctermfg =darkgrey
hi CursorLine   cterm=NONE ctermbg=235
hi VertSplit ctermfg=235 ctermbg=235
"hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE 
hi Normal  ctermbg=None cterm=NONE 
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
hi LineNr ctermfg=109 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi DiffAdd     ctermbg=4 guibg=darkblue
hi DiffChange  term=bold ctermbg=12 guibg=darkmagenta
hi DiffDelete  term=bold ctermfg=12 ctermbg=14 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText    term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
set fillchars +=vert:+
"autocmd BufWritePost *.php call CheckPHP()
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal tabstop=2
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal softtabstop=2
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal shiftwidth=2
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal expandtab
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal autoindent
au BufNewFile,BufRead *.css,*.html,*.js,*.vue setlocal fileformat=unix
au BufNewFile,BufRead *.py
            \setlocal tabstop=4
            \setlocal softtabstop=4
            \setlocal shiftwidth=4
            \setlocal textwidth=79
            \setlocal expandtab
            \setlocal autoindent
            \setlocal fileformat=unix
au BufRead *.vue setlocal filetype=vue
au BufNewFile,BufRead *.g setlocal nolist
""au BufRead *.wxml setlocal filetype=html
"au BufRead *.wxss setlocal filetype=css
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType php setlocal iskeyword+=$
autocmd FileType wxml setlocal filetype=html
autocmd FileType wxss setlocal filetype=css
autocmd FileType blade setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"autocmd BufWritePost * call system("ctags -a ".expand('%'))


set updatetime=300
au BufWinLeave * silent mkview  " 保存文件的折叠状态
au BufRead * silent loadview    " 恢复文件的折叠状态
au VimEnter * silent AddFindMenu  " 增加菜单

" ale-setting {{{
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

let g:gundo_prefer_python3 = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
