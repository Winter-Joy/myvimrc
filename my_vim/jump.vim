function! GetFileName(fileName)
    let fileName = a:fileName
    echo fileName
    if stridx(fileName,'Repo') > 0
        if stridx(fileName,'Repository') > 0
            "let fileName = strpart(fileName,0,strlen(fileName) - 10)
            let path = g:repository_path
        else
            let fileName = strpart(fileName,0,strlen(fileName) - 4)
            let fileName = fileName."Repository"
            let path = g:repository_path
        endif
    elseif stridx(fileName,'Service') > 0
        "let fileName = strpart(fileName,0,strlen(fileName) - 7)
        let path = g:service_path
    elseif stridx(fileName,'Model') > 0
        let path = g:model_path
        "let fileName = strpart(fileName,0,strlen(fileName) - 5)
    endif
    let fileName = path . fileName

    return fileName
endfunction
function! VimJump()
    let cword = expand('<cword>')
    let currentLine = getline(".")
    let startIndex = stridx(currentLine,'$this->')
    if !exists("g:repository_path")
        let g:repository_path = "app/Core/Repositories/Api/"
    endif
    if !exists("g:service_path")
        let g:service_path = "app/Core/Services/"
    endif
    if !exists("g:model_path")
        let g:model_path = "app/Core/Models/"
    endif
    let g:model_path = "app/Core/Models/"
    if startIndex > 0
        let startIndex = startIndex + 7
    endif

    let endIndex = stridx(currentLine,'->',startIndex)
    if endIndex < 0
        return
    endif
    if startIndex < 0
        return
    endif
    let fileName = strpart(currentLine,startIndex,endIndex - startIndex)
    " 首字母大写
    let firstLetter = strpart(fileName,0,1)
    let firstLetter = toupper(firstLetter)
    let fileName = firstLetter . strpart(fileName,1,strlen(fileName) - 1)
    let filePath = GetFileName(fileName)
    let filePath = filePath.'.php'

    let rootPath = GetRoot()
    let pattern = "\\vfu(nction)?!? ".cword
    execute 'e ' .rootPath.filePath
    if search(pattern, 'we') < 0
        echo "未找到函数,跳转失败"
    endif
endfunction

function! GetRoot()
    let currentPath = expand("%")
    let start = stridx(currentPath,'app')
    let rootPath = strpart(currentPath,0,start)
    return rootPath
endfunction

function! GetPos()
    let pos = getreg('o')
    echo pos
endfunction
nmap ii :call GetPos()<CR>
