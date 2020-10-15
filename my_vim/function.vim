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
