if exists("b:current_syntax")
  finish
endif

syntax keyword astdpcapKeyword Goto Executing
syntax keyword astdpcapApplication ExecIf NoOp Set GotoIf Macro MacroExit UserEvent Wait PrivacyManager ChanIsAvail While Dial

highlight link astdpcapKeyword Keyword
highlight link astdpcapApplication Function

let b:current_syntax = "astdpcap"
