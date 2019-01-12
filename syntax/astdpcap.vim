if exists("b:current_syntax")
  finish
endif

syntax keyword astdpcapKeyword Goto Executing
syntax keyword astdpcapFunction ExecIf NoOp Set GotoIf Macro

highlight link astdpcapKeyword Keyword
highlight link astdpcapFunction Function

let b:current_syntax = "astdpcap"
