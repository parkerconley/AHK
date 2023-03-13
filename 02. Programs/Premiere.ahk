;;Premiere - Set clip Audio to -3 and size using "z"/Excalibur plugin
	SendInput, {Click}
	SendInput, {Click}
	MouseGetPos, x, y
	;SELECT TAB
	Send, !^+3
	sleep, 15
	Send, ^a
	sleep, 300
	
	;SET SIZE
	Send, z
	sleep, 300
	
	;AUDIO
	Send, y
	sleep, 15
	SendInput, -3
	sleep, 15
	Send, {Enter}
	sleep, 1200
	
	;SELECT NEXT CLIP
	MouseMove, x,(y+25)
	Return



;;Premiere - Change clip dementions	
	SendInput, {Click}
	SendInput, {Click}
	Sleep 100
	
	Send, ^a
	
	SendInput, ^8 ;;Sequence Settings
	sleep, 300
	SendInput, {TAB}
	SendInput, {TAB}
	SendInput, {TAB}
	SendInput, {TAB}
	SendInput, 1080 ;;Horizontal Frame Size
	SendInput, {TAB}
	SendInput, 1350 ;;Vertical Frame Size
	SendInput, +{TAB}
	SendInput, +{TAB}
	SendInput, +{TAB}
	SendInput, +{TAB}
	SendInput, +{TAB}
	SendInput, {Enter}
	SendInput, {Enter}
	sleep, 300
	
	Send, z ;;Set clip to full screen using Excalibur plugin
	
	Sleep 300
	;AUDIO
	Send, y
	sleep, 15
	SendInput, -3
	sleep, 15
	Send, {Enter}
	Return