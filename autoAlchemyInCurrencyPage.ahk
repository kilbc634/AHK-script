;SetMouseDelay, 0
;SetDefaultMouseSpeed, 0
	
~5::
	If posList.MaxIndex() > 0 {
		mainX := posList[1].x
        mainY := posList[1].y
		scouX := posList[2].x
		scouY := posList[2].y
		
		MouseMove, scouX, scouY
		Sleep, 100
		Click, Down Right
		Sleep, 100
		Click, Up Right
		Sleep, 100
		
		MouseMove, mainX, mainY
		Sleep, 100
		Click, Down
		Sleep, 100
		Click, Up
		Sleep, 100
    }
    Return
	
~6::
	If posList.MaxIndex() > 0 {
		mainX := posList[1].x
        mainY := posList[1].y
		alcX := posList[3].x
		alcY := posList[3].y
		
		MouseMove, alcX, alcY
		Sleep, 100
		Click, Down Right
		Sleep, 100
		Click, Up Right
		Sleep, 100
		
		MouseMove, mainX, mainY
		Sleep, 100
		Click, Down
		Sleep, 100
		Click, Up
		Sleep, 100
    }
    Return

~f::
    global posList := []
    button_isRelease := True
    Loop {
        If Not GetKeyState("f", "P") {
            Break
        }
        If GetKeyState("d", "P") {
            If button_isRelease {
                MouseGetPos, xpos, ypos
                posList.Push({x:xpos, y:ypos})
                button_isRelease := False
            }
        }
        else {
            button_isRelease := True
        }
    }
    Return

$F9::ExitApp
$F10::Reload
