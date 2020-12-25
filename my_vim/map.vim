"=========================================
" Author: zhangguojun  
" 
" 
"__        ___       _            _
"\ \      / (_)_ __ | |_ ___ _ __(_) ___  _   _
" \ \ /\ / /| | '_ \| __/ _ \ '__| |/ _ \| | | |
"  \ V  V / | | | | | ||  __/ |  | | (_) | |_| |
"   \_/\_/  |_|_| |_|\__\___|_| _/ |\___/ \__, |
"                              |__/       |___/
"
if exists("b:my_map_vim")
    finish
endif
let b:my_map_vim = 1

"ab命令
ab pa call Paste()
ab nf NERDTreeFind
ab todo #Todo
ab addtag call system("ctags -a ".expand('%'))

iab aquery $query = self::select()
iab aret return $query ? $query->toArray():[];
iab This this
iab tihs this
iab studnet student
iab Studnet Student
iab atime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
iab azgj zhangguojun
iab zg zhangguojun

inoremap jk <ESC>
let g:UltiSnipsListSnippets = "<leader><tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"nmap <leader>hl :hi Normal ctermfg=252 ctermbg=none <cr>
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

nmap <silent><nowait> <leader>d :NERDTreeClose<CR>:bd<CR>
nmap <silent><nowait> <leader>x :NERDTreeClose<CR>:bd<CR>
nnoremap <silent> <leader>1 :NERDTreeToggle<CR>

nnoremap <silent> <F4> :LeaderfSelf<CR>
nnoremap <silent> <leader>H :LeaderfMru<CR>
nnoremap <silent><nowait> <leader>h :LeaderfMruCwd<CR>
nnoremap <silent><nowait> <leader>j :LeaderfMruCwd<CR>
nnoremap <silent><nowait> j :LeaderfMruCwd<CR>
nnoremap <silent><nowait> <leader>u :LeaderfFunction<CR>
noremap t :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>

"切换buffer
nmap K <Plug>AirlineSelectNextTab
nmap J <Plug>AirlineSelectPrevTab
nmap \1 <Plug>AirlineSelectTab1
nmap \2 <Plug>AirlineSelectTab2
nmap \3 <Plug>AirlineSelectTab3
nmap \4 <Plug>AirlineSelectTab4
nmap \5 <Plug>AirlineSelectTab5
nmap \6 <Plug>AirlineSelectTab6
nmap \7 <Plug>AirlineSelectTab7
nmap \8 <Plug>AirlineSelectTab8
nmap \9 <Plug>AirlineSelectTab9

"ctags
map <F5>  :!ctags -R --exclude=vendor --exclude=node_modules<cr>
map <F6> :call system("ctags -a ".expand('%'))<cr>

"复制粘贴
vnoremap <C-y> "+y
vnoremap <leader>y "+y
noremap p "+p
nnoremap <C-p> "0p
nmap <leader>yy yyp
nnoremap <leader>p :call Paste()<CR>
nnoremap <leader>P :call NoPaste()<CR>

"有道翻译
vnoremap <silent> <leader>t :<C-u>Ydv<CR>
nnoremap <silent> <leader>t :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

"nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
"nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

"ctrlsf 搜索
nnoremap <leader>F :CtrlSF<space>
vmap <leader>F <Plug>CtrlSFVwordPath
nnoremap <leader>3 :CtrlSFToggle<CR>


"检测php语法
noremap <leader>ss :call CheckPHP()<CR>

nnoremap <leader>rr :call PRUN()<CR>
func! PRUN()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!clear &time python3 %"
	elseif &filetype == 'c'
		exec "!gcc %&clear &time ./a.out"
	elseif &filetype == 'php'
		exec "!clear &time php %"
	elseif &filetype == 'html'
		exec "call OpenBrowser()"
	elseif &filetype == 'javascript'
		exec "!clear & time node %"
	endif
endfunc
func! RunPythonDebug()
	exec "w"
	exec "!python3 -m pdb %"
endfunc

nnoremap <leader>ry :call RunPythonDebug()<CR>
map <leader>co : Dox<CR><ESC>xmxk=9j`xA
map ffg : DoxAuthor<cr>

"emmet
let g:user_emmet_expandabbr_key = '<C-b>'
imap <C-b> <plug>(emmet-expand-abbr)

noremap <leader>ie :IndentGuidesToggle<cr>

"移动
noremap H ^
noremap L g_
inoremap <c-l> <ESC>

"注释
map c <Plug>NERDCommenterToggle

"格式化
map = gg=G``

"折叠
nnoremap z za " 切换折叠状态

"gitgutter
noremap g :GitGutterToggle<CR>
noremap G :GitGutterLineHighlightsToggle<CR>


"自定义配置键
nmap <leader>so :so %<CR>
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
map <leader>w <ESC>:w<CR>
"nmap <nowait> <leader>X <leader>h<CR>
"
"inoremap <leader>q <ESC>A;<ESC>
inoremap <leader>; <ESC>A;<ESC>
inoremap <leader>, <ESC>A,<ESC>
"退出
nmap q :q<CR>
nnoremap gq q

"nmap <leader>n :cn
"nmap <leader>N :cp
"nmap <leader>/ :vimgrep //g %
