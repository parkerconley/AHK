#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SendInput, {RButton}
MouseGetPos, x, y
Sleep 50
MouseMove x+110, y+171
Sleep 400
MouseMove x+262, y+302
SendInput, {Click}
MouseMove, x, y
Return