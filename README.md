# asterisk.vim

## Overview
This plugin helps when looking at asterisk dialplan captures. It provides:
1. A way to remove all the garbage that appears in the capture
1. Syntax highlighting
1. Folding

This plugin assumes that captues are using '.astdpcap' extensions.

## Functions
### asterisk#dialplan#capture#CleanUp()
This function will 'clean up' a raw asterisk dialplan capture that was captured from the console with ```script```. 
It does a few things to make the capture easier to read:
1. Removes all carriage returns
1. Removes \033 sequences
1. Removes the CLI prompt
1. Removes lines that are not related to the dialplan
1. Removes leading white space

This function can be called directly with:
```:call asterisk#dialplan#capture#CleanUp()``` 
and it will execute. 

I have this bound to a key mapping only good for buffers with astdpcap filetype:
```
augroup filetype_astdpcap
  autocmd!
  autocmd FileType astdpcap nnoremap <buffer> <localleader>cu :call asterisk#dialplan#capture#CleanUp()<cr>
augroup END
```
