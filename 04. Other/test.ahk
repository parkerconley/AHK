#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Go to naming section on Clipro
^+!TAB::
	CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
	MouseGetPos, x, y
	SendInput {Click 3363 344} ;FULL SCREEN
	;SendInput {Click 1518 385} ;HALF SCREEN
		;ImageSearch, FoundX, FoundY, 1762, 550, 2050, 320, C:\AHK\ImageSearch\CliproName.png
		;	if (ErrorLevel = 2)
		;		MsgBox Could not conduct the search.
		;	else if (ErrorLevel = 1)
		;		MsgBox Icon could not be found on the screen.
		;	else	
		;		MsgBox The icon was found at %FoundX%x%FoundY%.
		;		Sleep 50
		;		SendInput {Click FoundX+50 FoundY+50} ;SECOND MONITOR
		MouseMove, x, y

	Return

;Save changes to clip on Clipro
^+!~::
	MouseGetPos, x, y
	;SendInput {Click 3413 1409} ;FULL SCREEN
	;Sleep 100
	;SendInput {Click 3352 1381} ;FULL SCREEN
	SendInput {Click 1697 1364} ;HALF SCREEN
	Sleep 100
	SendInput {Click 1624 1340} ;HALF SCREEN
	MouseMove, x, y
	Return


;^+F11:: SendInput, Luyties-Fonoimoana ;team 2 
;	^!w::
;	Send, ^c
;	sleep, 500
;	Send, ^k
;	sleep, 1000
;	SendInput, https://www.instagram.com/
;	Send, ^v
;	Send, {Enter}
;	return


;	^!w::
;	Toggle := !Toggle
;	loop
;	{
;		Send, ^c
;		sleep, 500
;		Send, ^k
;		sleep, 1000
;		SendInput, https://www.instagram.com/
;		Send, ^v
;		Send, {Enter}
;		sleep, 1000
;		Send, {Enter}
;	}
;	return



;test the fbl function
;f2::ScheduleFacebookStreams()

;Facebook live stream scheduling function
;struggling with getting the variable to go into the msgbox
ScheduleFacebookStreams(){
	InputBox, date, Livestream Date, Month XXX Date XX`, Year XXXX?
		fbDate := %date%
	InputBox, time, Livestream Time, XX:XX AM/PM?
		fbTime := %time%
	InputBox, bool, Livestream Time, True/False?
		fbCrosspost := %bool%
	MsgBox % fbDate
	Sleep 1000
	MsgBox % fbTime
	Sleep 1000
	MsgBox % fbCrosspost
	Sleep 1000
Return
}


