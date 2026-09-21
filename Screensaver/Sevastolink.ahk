#Requires AutoHotkey v2.0
#SingleInstance Force

url := "http://server:8181/monitor" 

modo := A_Args.Length ? StrLower(SubStr(A_Args[1], 1, 2)) : "/c"
if (modo = "/p")            
    ExitApp
if (modo = "/c") {          
    MsgBox "Sevastolink Monitor"
    ExitApp
}

InstallKeybdHook()
InstallMouseHook()

perfil := A_Temp "\SevaSaver"
Run Format('msedge.exe --kiosk "{1}" --edge-kiosk-type=fullscreen --user-data-dir="{2}" --no-first-run', url, perfil), , , &pid

Sleep 2000                      
Loop {
    if (A_TimeIdlePhysical < 500)  
        break
    Sleep 100
}
RunWait Format('taskkill /PID {1} /T /F', pid), , "Hide"
ExitApp