"粘贴模式"
function! Paste()
    set paste
    set nonu
    set nornu
endfunction
"非粘贴模式"
function! NoPaste()
    set nopaste
    set nu
    set rnu
endfunction
function! CheckPHP()
    if &filetype == 'php'
        let result = system('php -n -l -d error_reporting=E_ALL -d display_errors=1 '.expand('%'))
        if (stridx(result, 'No syntax errors detected') == -1)
            echohl WarningMsg
            echo result
            echohl None
        endif
    endif
endfunction

function! OpenBrowser()
    "let result = system('php -S 127.0.0.1:8888')
    "echo result
    let file_path = g:home_path .expand('%')
    let command_str = "xdg-open "."'".file_path."'"
    echohl command_str
    execute "!". command_str
endfunction

function! Pop()
    let g:intro = popup_create([
                \   #{text: '   The sheep are out to get you!',
                \     props: [#{col: 4, length: 29,type:"sheepTitle"}]}
                \ ], #{
                \   border: [],
                \   padding: [],
                \   mapping: 0,
                \   drag: 1,
                \   close: 'button',
                \ })
    call timer_start(500,'PopClose',{'repeat':1})
endfunction

function! PopClose()
    popup_close(g:intro)
endfunction

" vue 注释配置
let g:ft = ''
fu! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        let syn = tolower(syn)
        exe 'setf '.syn
      endif
    endif
  endif
endfu
fu! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfu

"vim中自动显示搜索匹配数
let s:prevcountcache=[[], 0]
function! ShowCount()
    let key=[@/, b:changedtick]
    if len(key) == 0
        return ''
    endif
    if s:prevcountcache[0]==#key
        if s:prevcountcache[1] < 1
            return ''
        endif
        return '搜索总数:'.s:prevcountcache[1]
    endif
    let s:prevcountcache[0]=key
    let s:prevcountcache[1]=0
    let pos=getpos('.')
    try
        redir => subscount
        silent %s///gne
        redir END
        let result= matchstr(subscount, '\d\+')
        if result < 1
            return ''
        endif
        let s:prevcountcache[1]=result
        let result = '搜索总数:'.result
        return result
    finally
        call setpos('.', pos)
    endtry
endfunction


function! GetSearchCount()
    Normal :vimgrep //g %<cr>
endfunction

function! GetVisualSelection()
    let raw_search = @"
    let @/=substitute(escape(raw_search, '\/.*$^~[]'), "\n", '\\n', "g")
endfunction
"xnoremap // ""y:call GetVisualSelection()<bar>:%s///gn<cr>

let g:airline_section_c='%{ShowCount()} %<%f %h%m%r%=%-14.(%l,%c%V%) %P'
"let g:airline_section_gutter = '%{ShowCount()}'
function! AccentDemo()
  let keys = ['a','b','c','d','e','f','g','h']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction
"autocmd VimEnter * call AccentDemo()

func! FindInPath()
    if !exists("g:nerdtree_search_command")
      let g:nerdtree_search_command = "CtrlSF"
    endif
    let l:nodePath = g:NERDTreeFileNode.GetSelected().path.str()
    let prompt = "search:"
    let searchText = input(prompt)
    if searchText ==# ''
        call nerdtree#echo('canceled')
        return
    endif
    let command_str = g:nerdtree_search_command." ". searchText." ".l:nodePath
    NERDTreeClose
    exe command_str
    CtrlSFFocus
    redraw!
endfunc
"
func! AddNerdTreeMenu()
    if exists("g:add_nerdtree_search_menu")
        return
    endif

    let g:add_nerdtree_search_menu = 1
    let dic = {"text":"(f)ind in path","shortcut":"f","callback":function("FindInPath")}
    call NERDTreeAddMenuItem(dic)
endfunc

function! HeaderPython()
　　call setline(1, "#!/usr/bin/env python")
　　call append(1, "#-*- coding:utf8 -*-")
　　call append(2, "# Created By Winterjoy" . strftime('%Y-%m-%d %T', localtime()))
　　normal G
　　normal o
　　normal o
　　endf
endfunction
 
autocmd bufnewfile *.py call HeaderPython()
