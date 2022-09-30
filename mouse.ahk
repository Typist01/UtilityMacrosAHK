#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance	;
SetBatchLines, -1


XButton2::^#Right	;

XButton1::^#Left	;

MButton::^#d		;

; Move application to the left desktop


^XButton1::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

;Move application to right desktop
^XButton2::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  sleep, 50


  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

^MButton::^#F4

^!XButton1:: suspend, toggle
return




