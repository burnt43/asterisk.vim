function! asterisk#dialplan#capture#CleanUp()
  " remove carriage return
  silent execute 'normal! :%s/\v\r//g' . "\<cr>"

  " remove this particular \033 code
  silent execute 'normal! :%s/\v%o033\[0K//g' . "\<cr>"

  " remove the CLI prompt
  silent execute 'normal! :%s/\v\w+\*CLI\>//g' . "\<cr>"
endfunction
