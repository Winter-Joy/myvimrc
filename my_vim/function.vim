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
    let result = system('php -S 127.0.0.1:8888')
    echo result
    "let file_path = g:home_path .expand('%')
    "let command_str = "xdg-open "."'".file_path."'"
    "echohl command_str
    "execute "!". command_str
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
