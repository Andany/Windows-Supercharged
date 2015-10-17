#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
#NoTrayIcon

inputs := ["t", "s", "c", "h", "n", "p", "q", "r", "z"]
outputs := ["∴", "∵", "ℂ", "ℍ", "ℕ", "ℙ", "ℚ", "ℝ", "ℤ"]

AppsKey::
	Input, LastKey, L1 V

	For index, value in inputs
	{
		if LastKey = %value%
		{
			send, {BS}
			out := outputs[index]
			send, %out%
			break
		}
	}
			