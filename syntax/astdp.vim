if exists("b:current_syntax")
  finish
endif

syntax keyword astdpApplication AddQueueMember ADSIProg AELSub AgentLogin AgentRequest AGI AlarmReceiver AMD Answer Authenticate BackGround BackgroundDetect Bridge BridgeWait Busy CallCompletionCancel CallCompletionRequest CELGenUserEvent ChangeMonitor ChanIsAvail ChannelRedirect ChanSpy ClearHash ConfBridge Congestion ContinueWhile ControlPlayback DAHDIAcceptR2Call DAHDIRAS DAHDIScan DAHDISendCallreroutingFacility DAHDISendKeypadFacility DateTime DBdel DBdeltree DeadAGI Dial Dictate Directory DISA DumpChan EAGI Echo EndWhile Exec ExecIf ExecIfTime ExitWhile ExtenSpy ExternalIVR Festival Flash FollowMe ForkCDR GetCPEID Gosub GosubIf Goto GotoIf GotoIfTime Hangup HangupCauseClear IAX2Provision ICES ImportVar Incomplete IVRDemo JabberJoin_res_xmpp JabberLeave_res_xmpp JabberSend_res_xmpp JabberSendGroup_res_xmpp JabberStatus_res_xmpp JACK Log Macro MacroExclusive MacroExit MacroIf MailboxExists MeetMe MeetMeAdmin MeetMeChannelAdmin MeetMeCount MessageSend Milliwatt MinivmAccMess MinivmDelete MinivmGreet MinivmMWI MinivmNotify MinivmRecord MixMonitor Monitor Morsecode MP3Player MSet MusicOnHold NBScat NoCDR NoOp ODBC_Commit ODBC_Rollback ODBCFinish Originate OSPAuth OSPFinish OSPLookup OSPNext Page Park ParkAndAnnounce ParkedCall PauseMonitor PauseQueueMember Pickup PickupChan Playback PlayTones PrivacyManager Proceeding Progress Queue QueueLog RaiseException Read ReadExten ReceiveFAX_app_fax ReceiveFAX_res_fax Record RemoveQueueMember ResetCDR RetryDial Return Ringing SayAlpha SayAlphaCase SayCountedAdj SayCountedNoun SayDigits SayNumber SayPhonetic SayUnixTime SendDTMF SendFAX_app_fax SendFAX_res_fax SendImage SendText SendURL Set SetAMAFlags SetCallerPres SIPAddHeader SIPDtmfMode SIPRemoveHeader SIPSendCustomINFO SkelGuessNumber SLAStation SLATrunk SMS SoftHangup SpeechActivateGrammar SpeechBackground SpeechCreate SpeechDeactivateGrammar SpeechDestroy SpeechLoadGrammar SpeechProcessingSound SpeechStart SpeechUnloadGrammar StackPop StartMusicOnHold Stasis StopMixMonitor StopMonitor StopMusicOnHold StopPlayTones System TestClient TestServer Transfer TryExec TrySystem UnpauseMonitor UnpauseQueueMember UserEvent Verbose VMAuthenticate VMSayName VoiceMail VoiceMailMain VoiceMailPlayMsg Wait WaitExten WaitForNoise WaitForRing WaitForSilence WaitUntil While Zapateller
syntax keyword astdpKeyword Goto Executing

syntax match astdpChannel '\v(SIP|PJSIP)\/\w+(-\w+)?(-\x+)?'
syntax match astdpExtension '\v\[\zs\w+\ze\@'
syntax match astdpComment '\v^;.*$'

syntax region astdpString start=/\v"/ end=/\v"/

highlight link astdpApplication Function
highlight link astdpChannel SpecialChar
highlight link astdpComment Comment
highlight link astdpExtension String
highlight link astdpKeyword Keyword
highlight link astdpString String

let b:current_syntax = "astdp"
