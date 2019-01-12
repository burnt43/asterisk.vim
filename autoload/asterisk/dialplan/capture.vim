function! asterisk#dialplan#capture#CleanUp()
  normal! :%s/\v\r//g
endfunction
