#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

MouseGetPos, x, y
msgBox, x=%x% - y=%y%
Return