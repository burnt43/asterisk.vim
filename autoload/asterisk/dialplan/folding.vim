function! asterisk#dialplan#folding#GetFold(lnum)
  return 0
endfunction

function! asterisk#dialplan#folding#GetLineContext(lnum)
  let regexes = [
    '\v\[\w+\@\zs.*\ze:\d+\]', " [$EXTENSTION@$CONTEXT:$LINE]
    '\vGoto \(\zs.*\ze,\w+,\w+\)', " Goto ($CONTEXT,$EXTENSION,$LINE)
  ]

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
