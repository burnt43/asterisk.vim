if exists("b:current_syntax")
  finish
endif

syntax keyword astdpcapApplication AddQueueMember ADSIProg AELSub AgentLogin AgentRequest AGI AlarmReceiver AMD Answer Authenticate BackGround BackgroundDetect Bridge BridgeWait Busy CallCompletionCancel CallCompletionRequest CELGenUserEvent ChangeMonitor ChanIsAvail ChannelRedirect ChanSpy ClearHash ConfBridge Congestion ContinueWhile ControlPlayback DAHDIAcceptR2Call DAHDIRAS DAHDIScan DAHDISendCallreroutingFacility DAHDISendKeypadFacility DateTime DBdel DBdeltree DeadAGI Dial Dictate Directory DISA DumpChan EAGI Echo EndWhile Exec ExecIf ExecIfTime ExitWhile ExtenSpy ExternalIVR Festival Flash FollowMe ForkCDR GetCPEID Gosub GosubIf Goto GotoIf GotoIfTime Hangup HangupCauseClear IAX2Provision ICES ImportVar Incomplete IVRDemo JabberJoin_res_xmpp JabberLeave_res_xmpp JabberSend_res_xmpp JabberSendGroup_res_xmpp JabberStatus_res_xmpp JACK Log Macro MacroExclusive MacroExit MacroIf MailboxExists MeetMe MeetMeAdmin MeetMeChannelAdmin MeetMeCount MessageSend Milliwatt MinivmAccMess MinivmDelete MinivmGreet MinivmMWI MinivmNotify MinivmRecord MixMonitor Monitor Morsecode MP3Player MSet MusicOnHold NBScat NoCDR NoOp ODBC_Commit ODBC_Rollback ODBCFinish Originate OSPAuth OSPFinish OSPLookup OSPNext Page Park ParkAndAnnounce ParkedCall PauseMonitor PauseQueueMember Pickup PickupChan Playback PlayTones PrivacyManager Proceeding Progress Queue QueueLog RaiseException Read ReadExten ReceiveFAX_app_fax ReceiveFAX_res_fax Record RemoveQueueMember ResetCDR RetryDial Return Ringing SayAlpha SayAlphaCase SayCountedAdj SayCountedNoun SayDigits SayNumber SayPhonetic SayUnixTime SendDTMF SendFAX_app_fax SendFAX_res_fax SendImage SendText SendURL Set SetAMAFlags SetCallerPres SIPAddHeader SIPDtmfMode SIPRemoveHeader SIPSendCustomINFO SkelGuessNumber SLAStation SLATrunk SMS SoftHangup SpeechActivateGrammar SpeechBackground SpeechCreate SpeechDeactivateGrammar SpeechDestroy SpeechLoadGrammar SpeechProcessingSound SpeechStart SpeechUnloadGrammar StackPop StartMusicOnHold Stasis StopMixMonitor StopMonitor StopMusicOnHold StopPlayTones System TestClient TestServer Transfer TryExec TrySystem UnpauseMonitor UnpauseQueueMember UserEvent Verbose VMAuthenticate VMSayName VoiceMail VoiceMailMain VoiceMailPlayMsg Wait WaitExten WaitForNoise WaitForRing WaitForSilence WaitUntil While Zapateller
syntax keyword astdpcapKeyword Goto Executing

syntax match astdpcapChannel '\v(SIP|PJSIP)\/\w+(-\w+)?(-\x+)?'
syntax match astdpcapExtension '\v\[\zs\w+\ze\@'

syntax region astdpcapString start=/\v"/ end=/\v"/

highlight link astdpcapApplication Function
highlight link astdpcapKeyword Keyword
highlight link astdpcapString String
highlight link astdpcapChannel SpecialChar
highlight link astdpcapExtension String

let b:current_syntax = "astdpcap"


