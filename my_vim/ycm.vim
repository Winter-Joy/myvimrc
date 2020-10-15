set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_show_diagnostics_ui = 0 "关闭语法提示

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎

let g:ycm_min_num_of_chars_for_completion= 1 " 从第2个键入字符就开始罗列匹配项

let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项

let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全


" force recomile with syntastic
"
" nnoremap <F5> :YcmForceCompileAndDiagnostics
"
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
"
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
"
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" "注释和字符串中的文字也会被收入补全
"
" let g:clang_user_options='|| exit 0'
"
" let g:ycm_keep_logfiles = 1
"
" let g:ycm_log_level = 'debug'
"
" "同时，YCM可以打开location-list来显示警告和错误的信息:YcmDiags
"
 let g:ycm_error_symbol = '✗'
 let g:ycm_warning_symbol = '⚠'
 let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"
" nmap <F6> :YcmDiags
"
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
"
"
" nnoremap:YcmCompleter GoToDefinitionElseDeclaration " 按 F3键 跳转到定义处
"noremap <leader>e :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
