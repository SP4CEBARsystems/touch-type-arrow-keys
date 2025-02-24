﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Suspend, On  ;turn this hotkey off by default
;Pause,On, 1

RCtrl up::    ;turn this hotkey off when you lift the activation key
Suspend, On
;Pause,On, 1
Return

RCtrl::       ;turn this hotkey on when you press the activation key
Suspend, Off
;Pause,Off, 1
Return

AppsKey::
Suspend, Toggle
Pause,Toggle, 1
return

e::Up
s::Left
d::Down
f::Right

q::Home
e::End

c::^c
x::^x
v::^v

r::Backspace
f::Delete

j::LButton
k::MButton
l::RButton

m::LButton

i::
SendInput {WheelDown 1}
return

o::
SendInput {WheelUp 1}
return

;!e::
;    Send {(GetKeyState("Ctrl", "P") ? "^" : "") (GetKeyState("Shift", "P") ? "+" : "") "Up"}
;return

;!s::
;    Send {(GetKeyState("Ctrl", "P") ? "^" : "") (GetKeyState("Shift", "P") ? "+" : "") "Left"}
;return

;!d::
;    Send {(GetKeyState("Ctrl", "P") ? "^" : "") (GetKeyState("Shift", "P") ? "+" : "") "Down"}
;return

;!f::
;    Send {(GetKeyState("Ctrl", "P") ? "^" : "") (GetKeyState("Shift", "P") ? "+" : "") "Right"}
;return

;*LAlt::Return
;#IF GetKeyState("LAlt","P")
;w::Up
;#IF

;!e::Send {Up}
;!s::Send {Left}
;!d::Send {Down}
;!f::Send {Right}

;#If GetKeyState("LAlt", "P")
;  ;*LAlt::Return
;  ;Send {Alt up}
;  e::Up
;  s::Left
;  d::Down
;  f::Right
;#If

;#If GetKeyState("LAlt", "P")
;  e::Send {blind}{LAlt up}{Up}    ; Alt + E -> Up Arrow
;  s::Send {blind}{LAlt up}{Left}  ; Alt + S -> Left Arrow
;  d::Send {blind}{LAlt up}{Down}  ; Alt + D -> Down Arrow
;  f::Send {blind}{LAlt up}{Right} ; Alt + F -> Right Arrow
;#If