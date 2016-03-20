" pdb breakpoint
map <Leader>d :call InsertPdbLine()<CR>

function! InsertPdbLine()
    let trace = expand("import pdb; pdb.set_trace()")
    execute "normal o".trace
endfunction

