#Include lib\AHK-Virtual-Desktop-Library\Main.ahk

VDA_PATH := "VirtualDesktopAccessor.dll"
hVirtualDesktopAccessor := DllCall("LoadLibrary", "Str", VDA_PATH, "Ptr")
; Load VirtualDesktopAccessor.dllGetDesktopCountProc := DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "GetDesktopCount", "Ptr")
GoToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "GoToDesktopNumber", "Ptr")
MoveWindowToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "MoveWindowToDesktopNumber", "Ptr")
GetCurrentDesktopNumber:=DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "GetCurrentDesktopNumber", "Ptr")


; Define hotkeys for desktop navigation in a 3x3 grid ctrl+alt+arrow
^!#Left::MoveDesktop("Left")
^!#Right::MoveDesktop("Right")
^!#Up::MoveDesktop("Up")
^!#Down::MoveDesktop("Down")
 F1::MouseClick, Middle

GoToDesktopNumber(num) {
    global GoToDesktopNumberProc
    DllCall(GoToDesktopNumberProc, "Int", num, "Int")
   
    return

}

fMoveCurrentWindowToDesktop(desktopNumber) {
    global MoveWindowToDesktopNumberProc, GoToDesktopNumberProc
    WinGet, activeHwnd, ID, A
    DllCall(MoveWindowToDesktopNumberProc, "Ptr", activeHwnd, "Int", desktopNumber, "Int")
    DllCall(GoToDesktopNumberProc, "Int", desktopNumber)
}


MoveOrGotoDesktopNumber(num){
	WindowsBugFix()
	DllCall(GoToDesktopNumberProc, Int, num )
	; the following 3 lines are because Windows still have bugs:
	; sometimes when going to one desktop to another the focus still
	; in the previous window of the previous desktop(dont ask me why...
	; cos windows)
	; SO I have to get the alt tab list of windows and focus the topmost
	; window EVERY time you go to another desktop
	; also, because the following lines auto alt tab when going to an empty
	; desktop  AltTabOnSwitch() its redundant and deprecated!, I didnt deleted it
	; because im lazy(at least I document everything)
	altTabList := GetAltTabList()
	lastWindow := altTabList[1]
	WinActivate, ahk_id %lastWindow%
}


MoveDesktop(name) {
    global GetCurrentDesktopNumber
    ran := DllCall(GetCurrentDesktopNumber, "Int")
    if (name = "Left"){
        if ( ran = 0 ){
            num:=ran+0
            MoveOrGotoDesktopNumber(8)
        }
        else{
            ;go to left
            num:=ran+0
            MoveOrGotoDesktopNumber(num - 1)

        }

    }
    if (name = "Right"){
        if(ran=8){
            num:=ran+0
            MoveOrGotoDesktopNumber(0)

        }
        else{

            ;go to right
            num:=ran+0
            MoveOrGotoDesktopNumber(num + 1)
        }

    }
    if (name = "Up") {
        if (ran != 0 && ran != 1 && ran != 2) {
            num := ran + 0
            MoveOrGotoDesktopNumber(num - 3)
        } else {
            num := ran + 0
            MoveOrGotoDesktopNumber(num + 6)
        }
    }
    
    if (name = "Down") {
        if (ran != 6 && ran != 7 && ran != 8) {
            num := ran + 0
            MoveOrGotoDesktopNumber(num + 3)
        } else {
            num := ran + 0
            MoveOrGotoDesktopNumber(num - 6)
        }
    }

}








