;;Premiere - Change clip dementions	(1080x1920)
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
SendInput, 1920 ;;Vertical Frame Size
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