if exists("b:current_syntax")
  finish
endif

syntax keyword astdpcapKeyword Goto Executing

highlight link astdpcapKeyword Keyword

let b:current_syntax = "astdpcap"
