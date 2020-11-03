set autoread
set t_Co=256
colorscheme darkblue
syntax enable
syntax on
set mouse=a
set autoindent
set cindent
set smarttab
set rnu
set nu
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
set mouseshape=i:udsizing
set so=20
set noswapfile
set cursorline
set linebreak
set foldmethod=indent
set ruler
set showmatch
set laststatus=2
set incsearch
set smartcase
set listchars=tab:»※,trail:※
set list
set showcmd
set copyindent

"color
hi Comment ctermfg =darkgrey

autocmd InsertLeave WinEnter * set cursorline
autocmd InsertEnter WinLeave * set nocursorline

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
"autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
hi Normal ctermfg=252 ctermbg=none
"set autowriteall
set updatetime=300
"au BufWinLeave * silent mkview  " 保存文件的折叠状态
"au BufRead * silent loadview    " 恢复文件的折叠状态

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

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
			\   'c++': ['clang'],
			\   'c': ['clang'],
			\   'python': ['pylint'],
			\}
" }}}
let g:gundo_prefer_python3 = 1
if executable('cquery')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'cquery',
				\ 'cmd': {server_info->['cquery']},
				\ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
				\ 'initialization_options': { 'cacheDirectory': '/path/to/cquery/cache' },
				\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
				\ })
endif

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
