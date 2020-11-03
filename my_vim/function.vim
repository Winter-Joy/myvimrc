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
