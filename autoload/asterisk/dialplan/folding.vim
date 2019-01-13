function! asterisk#dialplan#folding#GetFold(lnum)
  return 0
endfunction

function! asterisk#dialplan#folding#GetLineContext(lnum)
  " [ [$EXTENSTION@$CONTEXT:$LINE], Goto ($CONTEXT,$EXTENSION,$LINE) ]
  let regexes = ['\v\[\w+\@\zs.*\ze:\d+\]', '\v(Goto|Spawn extension) \(\zs.*\ze,\s*\w+,\s*\w+\)']

  for regex in regexes
    let context = matchstr(getline(a:lnum), regex)
    if !empty(context)
      return context
    endif
  endfor

  return ""
endfunction

function! asterisk#dialplan#folding#GetNextLineContext(lnum)
  if a:lnum ==# line("$")
    return -1
  else
    return asterisk#dialplan#folding#GetLineContext(a:lnum + 1)
  end
endfunction

function! asterisk#dialplan#folding#GetPreviousLineContext(lnum)
  if a:lnum ==# 0
    return -1
  else
    return asterisk#dialplan#folding#GetLineContext(a:lnum - 1)
  end
endfunction
