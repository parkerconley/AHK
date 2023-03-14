; Name: Parker Conley
; Date: 03.13.2023
; Description: This program reformats markdown text from Roam Research to be readable in Discord.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Log := String(%clipboard%, w w)
; https://www.autohotkey.com/docs/v1/lib/StrReplace.htm