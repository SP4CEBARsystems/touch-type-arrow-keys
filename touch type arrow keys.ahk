#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent  ; Prevent the script from exiting automatically.
OnExit("ExitFunc")

ExitFunc(ExitReason, ExitCode) {
    send {alt up}
}

; MACRO ACTIVATION

Suspend, On  ; turn this hotkey off by default
;Pause,On, 1

LAlt up::    ; turn this hotkey off when you lift the activation key
Suspend, On
send {alt up}
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

; BYPASS KEYS
tab::        ; bypass alt + tab
    send {alt down}{tab}
return

; KEY MAP
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
