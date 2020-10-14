~^q::
    posList := []
    LButton_isReady := True
    Loop {
        If Not GetKeyState("q", "P") Or Not GetKeyState("Ctrl", "P") {
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
    For Key, Value in posList {
        MsgBox % "Point " Key "`n" "x = " Value.x " , " "y = " Value.y
    }
    Return

$F9::ExitApp
$F10::Reload
