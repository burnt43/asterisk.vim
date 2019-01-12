if exists("b:current_syntax")
  finish
endif

syntax keyword astdpcapKeyword Goto Executing
syntax keyword astdpcapApplication ExecIf NoOp Set GotoIf Macro MacroExit UserEvent Wait PrivacyManager ChanIsAvail While Dial

syntax match astdpcapChannel '\v(SIP|PJSIP)\/\w+-(\w+-)?\x+'

syntax region astdpcapString start=/\v"/ end=/\v"/

highlight link astdpcapKeyword Keyword
highlight link astdpcapApplication Function
highlight link astdpcapString String
highlight link astdpcapChannel SpecialChar

let b:current_syntax = "astdpcap"
