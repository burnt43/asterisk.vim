function! asterisk#dialplan#folding#GetFold(lnum)
  return 0
endfunction

function! asterisk#dialplan#folding#GetLineContext(lnum)
  " [ [$EXTENSTION@$CONTEXT:$LINE], Goto ($CONTEXT,$EXTENSION,$LINE) ]
  let regexes = ['\v\[\w+\@\zs.*\ze:\d+\]', '\vGoto \(\zs.*\ze,\w+,\w+\)']

  for regex in regexes
    let context = matchstr(getline(lnum), regex)
    if !empty(context)
      return context
    endif
  endfor

  return ""
endfunction

function! asterisk#dialplan#folding#GetNextLineContext(lnum)
endfunction

function! asterisk#dialplan#folding#GetPreviousLineContext(lnum)
endfunction
