function! asterisk#dialplan#capture#CleanUp()
  execute 'normal! :%s/\v\r//g' . "\<cr>"
endfunction
