#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Suspend, On  ; turn this hotkey off by default
;Pause,On, 1

LAlt up::    ; turn this hotkey off when you lift the activation key
Suspend, On
send {Alt up}
;Pause,On, 1
Return

LAlt::       ; turn this hotkey on when you press the activation key
Suspend, Off
;Pause,Off, 1
Return

RAlt::       ; toggle this hotkey on when you press the toggle-activation key
Suspend, Toggle
Pause,Toggle, 1
return

tab::        ; bypass alt tab
    send {Alt down}{tab}
return

e::Up
s::Left
d::Down
f::Right

w::Home
r::End

q::PgUp
a::PgDn

c::^c
x::^x
v::^v
z::^z

t::Backspace
g::Delete

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