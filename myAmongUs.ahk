SetMouseDelay, 0
SetDefaultMouseSpeed, 0

~RButton::
    Send, {Esc}
    Return

~f::
    If posList.MaxIndex() > 0 {
        For index, value in posList {
            x := value.x
            y := value.y
            MouseMove, x, y
            Sleep, 40
            Click, Down
            Sleep, 40
            Click, Up
        }
    }
    Return

~^f::
    global posList := []
    LButton_isReady := True
    Loop {
        If Not GetKeyState("f", "P") Or Not GetKeyState("Ctrl", "P") {
            Break
        }
        If GetKeyState("LButton", "P") {
            If LButton_isReady {
                MouseGetPos, xpos, ypos
                posList.Push({x:xpos, y:ypos})
                LButton_isReady := False
            }
        }
        else {
            LButton_isReady := True
        }
    }
    Return

$F9::ExitApp
$F10::Reload
