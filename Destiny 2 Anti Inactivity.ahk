#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

msgbox, ctr + f to begin AFK, ctr + d to close program, ctr + s to toggle pause.

^f::	; press ctr&f to begin
#Persistent
SetTimer, Start
return

Start: 
send {d down}
sleep 100
send {d up}
sleep 1000
send {LButton}
sleep 60000
return

^d:: ExitApp	; press ctr&d to close ahk

^s::
Pause
return
