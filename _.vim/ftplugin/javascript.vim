set shiftwidth=2
set tabstop=2
" pdb breakpoint
"
map <Leader>d :call InsertDebuggerLine()<CR>

function! InsertDebuggerLine()
    let trace = expand("debugger;")
    execute "normal o".trace
endfunction

