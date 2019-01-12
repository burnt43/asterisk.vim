function! asterisk#dialplan#capture#CleanUp()
  " remove carriage return
  silent execute 'normal! :%s/\v\r//g' . "\<cr>"

  " remove this particular \033 code that i'm not familiar with
  silent execute 'normal! :%s/\v%o033\[0K//g' . "\<cr>"

  " remove \033 code that i am familiar with
  silent execute 'normal! :%s/\v%o033\[(\d;)?\d+m//g' . "\<cr>"

  " remove the CLI prompt
  silent execute 'normal! :%s/\v\w+\*CLI\>//g' . "\<cr>"
endfunction
