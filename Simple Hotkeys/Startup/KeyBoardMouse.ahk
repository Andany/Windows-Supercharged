#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
#NoTrayIcon

*^up::
	if GetKeyState("Left", "p")
		MouseMove, -10, -10, 0, R
	else
		if GetKeyState("Right", "p")
			MouseMove, 10, -10, 0, R  ; Win+UpArrow hotkey => Move cursor upward
		else
			MouseMove, 0, -10, 0, R  ; Win+UpArrow hotkey => Move cursor upward
Return

*^Down::
	if GetKeyState("Left", "p")
		MouseMove, -10, 10, 0, R
	else
		if GetKeyState("Right", "p")
			MouseMove, 10, 10, 0, R  ; Win+UpArrow hotkey => Move cursor upward
		else
			MouseMove, 0, 10, 0, R  ; Win+DownArrow => Move cursor downward
Return


*^Left::
	if GetKeyState("up","p")
		MouseMove, -10, -10, 0, R
	else
		if GetKeyState("Down", "p")
			MouseMove, -10, 10, 0, R
		else
			MouseMove, -10, 0, 0, R  ; Win+LeftArrow => Move cursor to the left
Return

*^Right::
	if GetKeyState("up", "p")
		MouseMove, 10, -10, 0, R
	else
		if GetKeyState("Down", "p")
			MouseMove, 10, 10, 0, R
		else
			MouseMove, 10, 0, 0, R  ; Win+RightArrow => Move cursor to the right


*!PgUp::  ; LeftWin + RightControl => Left-click (hold down Control/Shift to Control-Click or Shift-Click).
SendEvent {Blind}{LButton down}
KeyWait RCtrl  ; Prevents keyboard auto-repeat from repeating the Rmouse click.
SendEvent {Blind}{LButton up}
return

*!PgDn::  ; LeftWin + AppsKey => Right-click
SendEvent {Blind}{RButton down}
KeyWait AppsKey  ; Prevents keyboard auto-repeat from repeating the mouse click.
SendEvent {Blind}{RButton up}
return