noremap <C-n> ;
ab atime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
ab azgj zhangguojun
"noremap <C-p> ,
"nmap <leader>s :w<CR>
nmap <leader>s :ALEToggle<CR>
"nmap <Leader>d :ALEDetail<CR>
nmap <leader>so :so %<CR>
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

inoremap jk <ESC>
let g:UltiSnipsListSnippets = "<leader><tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"nmap <leader>hl :hi Normal ctermfg=252 ctermbg=none <cr>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
map <leader>w <ESC>:w<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


nmap <leader>d :NERDTreeClose<CR>:bd<CR>
nnoremap <silent> <leader>1 :NERDTreeToggle<CR>


nnoremap <silent> <F3> :LeaderfMru<CR>
nnoremap <silent> <F4> :LeaderfSelf<CR>
nnoremap <silent> <leader>H :LeaderfMru<CR>
nnoremap <silent> <leader>h :LeaderfMruCwd<CR>
nnoremap <silent> <leader>u :LeaderfFunction<CR>


"nmap <tab><tab> <Plug>AirlineSelectNextTab
"nmap <leader><tab> <Plug>AirlineSelectPrevTab
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

map <leader>/ <Plug>NERDCommenterToggle 
"map <F8> :TagbarToggle<CR>
"map <leader>2 :TagbarToggle<CR>
"map <leader>h :MRU<CR>
"nnoremap <F5> :GundoToggle<CR>
map <F5>  :!ctags -R app --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
vnoremap <C-y> "+y
nnoremap <C-p> "0p
inoremap <leader>q <ESC>A;<ESC>
"imap <leader>e <ESC>A{<CR>
"nnoremap <space> za             " 用空格来切换折叠状态
nmap <leader>yy yyp
cnoremap bp Breakpoint
vnoremap <silent> <leader>t :<C-u>Ydv<CR>
nnoremap <silent> <leader>t :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

"nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
"nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

nnoremap <leader>F :CtrlSF<space>
vmap <leader>F <Plug>CtrlSFVwordPath
nnoremap <leader>3 :CtrlSFToggle<CR>


"inoremap <CR> <ESC>o

"检测php语法
noremap <leader>ss :call CheckPHP()<CR>

nnoremap <leader>rr :call PRUN()<CR>
func! PRUN()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!clear"
		exec "!time python3 %"
	elseif &filetype == 'c'
		exec "!gcc %&clear &time ./a.out"
	endif
endfunc
func! RunPythonDebug()
    exec "w"
    exec "!python3 -m pdb %"
endfunc
nnoremap <leader>ry :call RunPythonDebug()<CR>
nnoremap <leader>p :call Paste()<CR>
nnoremap <leader>P :call NoPaste()<CR>
map <leader>co : Dox<CR><ESC>xmxk=9j`xA
map ffg : DoxAuthor<cr>
imap   <C-b>   <plug>(emmet-expand-abbr)

noremap <leader>ie :IndentGuidesToggle<cr>

nnoremap <Leader>2 :GundoToggle<CR>


""移动
noremap <c-d> <c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e>

