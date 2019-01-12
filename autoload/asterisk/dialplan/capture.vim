function! asterisk#dialplan#capture#CleanUp()
  " remove carriage return
  execute 'normal! :%s/\v\r//g' . "\<cr>"

  " remove \033 color font thing
  execute 'normal! :%s/\v%o033[0K%o033[1;30m//g' . "\<cr>"

  " remove the CLI prompt
  execute 'normal! :%s/\v\w+\*CLI\>//g' . "\<cr>"
endfunction
