let g:incr_ostate = -1
let g:incr = deepcopy(g:incr_ostate)

function! ResetIncr()
  let g:incr = deepcopy(g:incr_ostate)
endfunction

function! Incr()
  let g:incr = g:incr + 1
  return g:incr
endfunction

augroup IncForSubstitute
  autocmd!
  autocmd CmdlineChanged : if getcmdline() =~# '^\s*[%0-9.$,]*\s*s\%[ubstitute]\>' | call ResetIncr() | endif
  autocmd CmdlineLeave : call ResetIncr()
augroup END
