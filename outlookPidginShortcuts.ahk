;Killswitch

^Escape::
	ExitApp
	Return

;Outlook

;Sends regular messages
^#m::
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendMessage, SendMessage
	Gui, Show
	return
	SendMessage:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
		
	Send %Message%
	
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return

;Sends links
^#l::
	Send ^l
	Clipboard =			
	MyString = 	
	Send ^c
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendLink, SendLink
	Gui, Show
	return
	SendLink:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 50
	
	Send {Enter}
	Send %Message%
	
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return

;Sends Highlighted
^#c::
	Clipboard =						
	MyString =
	Send ^c
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendHighlighted, SendHighlighted
	Gui, Show
	return
	SendHighlighted:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 50
	
	Send {Enter}
	Send %Message%
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return

;Sends Clipboard
^#v::
	MyString =
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendClipboard, SendClipboard
	Gui, Show
	return
	SendClipboard:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 50
	
	Send {Enter}
	Send %Message%
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return
	
;Sends Page
^#a::
	Send ^a
	Clipboard =						
	MyString = 
	Send ^c
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendPage, SendPage
	Gui, Show
	return
	SendPage:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 50
	
	Send {Enter}
	Send %Message%
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return
	
;Sends Page
^#x::
	Send ^a
	Clipboard =						
	MyString = 
	Send ^c
	Send {Backspace}
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendCut, SendCut
	Gui, Show
	return
	SendCut:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter}
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 50
	
	Send {Enter}
	Send %Message%
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return
	
;sends printscreen
^PrintScreen::
	Clipboard =						
	Send {PrintScreen}
	MyString = 
	Send ^c
	Send {Backspace}
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, FEFAEF
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, To:
	Gui, Add, Edit, vTo
	Gui, Add, Text,, Subject:
	Gui, Add, Edit, vSubject
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gSendImage, SendImage
	Gui, Show
	return
	SendImage:
	Gui, Submit   	
	
	Run Outlook
	
	Sleep 500
	Send {Alt}
	Send H
	Send N
	
	Send %To%
	Send {Enter
	Send {Tab}
	Sleep 50
	Send {Tab}
	
	Send %Subject%
	Send {Tab}
	Sleep 50
	
	Send ^v
	Sleep 1000
	
	Send {Enter}
	Send %Message%
	Send {Alt Down}s{Alt Up}
	Send s
	
	Sleep 1000
	Send !{F4}
	return

;sends selected file via Outlook
^#s::
	Send +{F10}
	Loop, 7
	{
    Send, {Up}
	} 
	Send {Right}
	Loop, 5
	{
    Send, {Down}
	} 
	Send, {Enter}
	Sleep, 200
	Send, {Enter}
	return
	
;Pidgin

^!l::
	Send ^l
	Clipboard =						
	MyString =
	Send ^c
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, EBE0EC
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, Name:
	Gui, Add, Edit, vName
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gPidginLink, PidginLink
	Gui, Show
	return
	PidginLink:
	Gui, Submit   	
	Run, Pidgin
	Sleep, 200
	Send ^m
	Send, %Name%
	Sleep, 200
	Send, {Tab}{Enter}
	Sleep, 200
	Send, ^v
	Send {ShiftDown}{Enter}{ShiftUp}
	Send %Message%
	Send, {Tab}{Enter}
	Send !{f4}
	Send !{f4}
	return

^!c::
	Clipboard =						
	MyString =
	Send ^c
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, EBE0EC
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, Name:
	Gui, Add, Edit, vName
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gPidginCopy, PidginCopy
	Gui, Show
	return
	PidginCopy:
	Gui, Submit   	
	Run, Pidgin
	Sleep, 200
	Send ^m
	Send, %Name%
	Sleep, 200
	Send, {Tab}{Enter}
	Sleep, 200
	Send, ^v
	Send {ShiftDown}{Enter}{ShiftUp}
	Send %Message%
	Send, {Tab}{Enter}
	Send !{f4}
	Send !{f4}
	return

^!v::
	MyString =
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, EBE0EC
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, Name:
	Gui, Add, Edit, vName
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gPidginClipboard, PidginClipboard
	Gui, Show
	return
	PidginClipboard:
	Gui, Submit   	
	Run, Pidgin
	Sleep, 200
	Send ^m
	Send, %Name%
	Sleep, 200
	Send, {Tab}{Enter}
	Sleep, 200
	Send, ^v
	Send {ShiftDown}{Enter}{ShiftUp}
	Send %Message%
	Send, {Tab}{Enter}
	Send !{f4}
	Send !{f4}
	return

^!a::

	Send ^a
	Clipboard =						
	MyString =
	Send ^c
	MyString = 
	ClipWait 1						
	MyString := Clipboard
	Gui, New
	Gui, Color, EBE0EC
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, Name:
	Gui, Add, Edit, vName
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gPidginPage, PidginPage
	Gui, Show
	return
	PidginiPage:
	Gui, Submit   	
	Run, Pidgin
	Sleep, 200
	Send ^m
	Send, %Name%
	Sleep, 200
	Send, {Tab}{Enter}
	Sleep, 200
	Send, ^v
	Send {ShiftDown}{Enter}{ShiftUp}
	Send %Message%
	Send, {Tab}{Enter}
	Send !{f4}
	Send !{f4}
	return

^!x::

	Send ^a
	Clipboard =						
	MyString =
	Send ^c
	ClipWait 1						
	MyString := Clipboard
	send BackSpace
	Gui, New
	Gui, Color, EBE0EC
	Gui, +hwndguihwnd +ToolWindow -MinimizeBox -MaximizeBox
	Gui, Font, s12, Roboto
	Gui, Add, Text,, `n`n%clipboard%
	Gui, Add, Text,, Name:
	Gui, Add, Edit, vName
	Gui, Add, Text,, Message:
	Gui, Add, Edit, vMessage
	Gui, Add, Button, Default gCutAndPidgin, CutAndPidgin
	Gui, Show
	return
	CutAndPidgin:
	Gui, Submit   	
	Run, Pidgin
	Sleep, 200
	Send ^m
	Send, %Name%
	Sleep, 200
	Send, {Tab}{Enter}
	Sleep, 200
	Send, ^v
	Send {ShiftDown}{Enter}{ShiftUp}
	Send %Message%
	Send, {Tab}{Enter}
	Send !{f4}
	Send !{f4}
	return

