

^1::WinClose A
;closes current application

;closes all application on current desktop


^2::
WinGet, id, list, , , Program Manager
Loop, %id%
{
    StringTrimRight, this_id, id%a_index%, 0
    WinGetTitle, this_title, ahk_id %this_id%
    winclose,%this_title%
}
Return

^3:: LButton
^4:: RButton
^5::^#Left
^6::^#Right
^7::^#d
^8::^#F4

;Move application to left desktop
^!5::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

;Move application to right desktop
^!6::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return


^9::Send #+s
;Show application on all desktops
^=::
	WinGet, ExStyle, ExStyle, A  ; "A" means the active window
	If  !(ExStyle & 0x00000080)  ; visible on all desktops.
		WinSet, ExStyle, 0x00000080, A
	else
		WinSet, ExStyle, -0x00000080, A 
return

^!a::Run "C:\Users\moon_\OneDrive\CS\Programming\Udemy Courses"

^-::Send {F11}



^!Space::  Winset, Alwaysontop, , A

^!0:: suspend, toggle
return
^!XButton2:: suspend, toggle
return
;Esc::suspend on




