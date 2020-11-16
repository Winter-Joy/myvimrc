"注释模板
let g:DoxygenToolkit_commentType = "php"
let g:DoxygenToolkit_briefTag_pre = "function\t"
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_briefTag_post = ""
let g:DoxygenToolkit_templateParamTag_pre = "param\t"
let g:DoxygenToolkit_paramTag_pre = "param\tstring\t"
let g:DoxygenToolkit_returnTag = "return\t"
let g:DoxygenToolkit_throwTag_pre = "throw\t"
let g:DoxygenToolkit_fileTag = "script\t"
let g:DoxygenToolkit_dateTag = "datetime\t"
let g:DoxygenToolkit_authorTag = "author\t"
let g:DoxygenToolkit_versionTag = "version\t"
let g:DoxygenToolkit_versionString = "1.0.0"
let g:DoxygenToolkit_blockTag = "name\t"
let g:DoxygenToolkit_classTag = "class\t"
let g:DoxygenToolkit_authorName = "zhangguojun"
let g:doxygen_enhanced_color = 1

"tagbar
"设置tagbar使用的ctags的插件,必须要设置对
"let g:tagbar_ctags_bin='/usr/bin/ctags'
"let g:tagbar_show_linenumbers=1
"""设置tagbar的窗口宽度
"let g:tagbar_width=30
"""设置tagbar的窗口显示的位置,为左边
"let g:tagbar_right=1
"let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
""自动折叠
"let Tlist_File_Fold_Auto_Close=1
"set tags=./tags,./TAGS,tags;~,TAGS;~
set tags=./tags;


au BufRead,BufNewFilE *.blade.php    set filetype=blade
"mru
"let MRU_Max_Menu_Entries = 20
"let MRU_Window_Height = 20
"source ~/.vim/bundle/php-doc.vim

"devicons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1

"airline
let g:airline#extensions#tabline#keymap_ignored_filetypes =
            \ ['vimfiler', 'nerdtree']
let airline#extensions#tabline#ignore_bufadd_pat =
            \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tmuxline#enabled = 0
  "let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#ignore_bufadd_pat = 1

"coc
"let g:coc_filetype_map = {
            "\ 'html.swig': 'html',
            "\ 'wxss': 'css',
            "\ 'blade.php': 'html'
            "\ }
"debug port
let g:deguggerPort = 91927

"autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"jedi
let g:jedi#auto_initialization = 0
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
autocmd FileType python setlocal completeopt-=preview

let g:jedi#goto_command = "<leader>o"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = "gt"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = ""

let g:ctrlsf_ignore_dir = ['bower_components', 'vendor', 'runtime', 'node_module']

let g:snips_author = 'zhangguojun'

"emmet"
"let g:user_emmet_leader_key = '<C-b>'
"
let g:blade_custom_directives = ['datetime', 'javascript']
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

"html
let g:home_path="C:/Users/91684/AppData/Local/Packages/CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc/LocalState/rootfs"
let g:file_path="/home/winterjoy/code/py/browser/index.html"

let g:Lf_WindowHeight = 0.5
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_PreviewPopupWidth = 100
let g:Lf_PopupWidth = 0.75
let g:Lf_AutoResize = 1
"let g:Lf_PopupPreviewPosition = 'cursor'
"let g:Lf_PopupPosition = [2,3]
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 0
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
"set ambiwidth=double
let g:Lf_UseVersionControlTool = 1

let g:snips_email="winterjoy0121@163.com"
let g:autoclose_vim_commentmode = 1
" 对齐线
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 1
