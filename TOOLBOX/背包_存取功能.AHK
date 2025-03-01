#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; 全域變數
global activeFunction := ""                ; 目前執行中的功能 ("Continuous", "Store", "Retrieve")
global continuousClickRunning := false
global storeRunning := false
global retrieveRunning := false
global continuousClickPaused := false
global storePaused := false
global retrievePaused := false
global gameWindowTitle := "Path of Exile"
global storeCoords := []                    ; 存倉用座標陣列
global storeIndex := 1

; 美化 GUI：設定字型、背景色與群組框
Gui, Font, s10, Segoe UI
Gui, Color, FFFFFF
Gui, Add, GroupBox, x10 y10 w380 h150, 功能熱鍵
Gui, Add, Text, x20 y30 w360, F2 - 連續點擊
Gui, Add, Text, x20 y50 w360, F3 - 取倉 (篩選高亮物品, 左上角第一格不能高亮)
Gui, Add, Text, x20 y70 w360, F5 - 存倉 (依序將背包物品存入倉庫)
Gui, Add, Text, x20 y90 w360, F11 - 重新啟動

; GUI 顯示在螢幕右上角
guiWidth := 400, guiHeight := 180
guiX := A_ScreenWidth - guiWidth, guiY := 0
Gui, Show, w%guiWidth% h%guiHeight% x%guiX% y%guiY%, 倉庫管理腳本
WinSet, AlwaysOnTop, , 倉庫管理腳本

Return

;------------------------------
; 主功能熱鍵
F2::ToggleContinuousClick()
F3::ToggleRetrieve()
F5::ToggleStore()
F11::ReloadScript()

; 暫停／恢復熱鍵 (僅作用於目前執行中的功能)
^F2::TogglePauseContinuousClick()
^F3::TogglePauseRetrieve()
^F5::TogglePauseStore()

;------------------------------
; 停止所有功能，確保任一時刻只有一個功能在執行
StopAllFunctions() {
    global continuousClickRunning, storeRunning, retrieveRunning
    global continuousClickPaused, storePaused, retrievePaused
    global activeFunction
    continuousClickRunning := false
    storeRunning := false
    retrieveRunning := false
    continuousClickPaused := false
    storePaused := false
    retrievePaused := false
    SetTimer, PerformContinuousClick, Off
    SetTimer, ProcessStore, Off
    SetTimer, ProcessRetrieve, Off
    Send, {Ctrl Up}
    activeFunction := ""
}

;------------------------------
; 連續點擊功能 (F2)
ToggleContinuousClick() {
    global continuousClickRunning, continuousClickPaused, activeFunction
    if (activeFunction = "Continuous") {
        continuousClickRunning := false
        continuousClickPaused := false
        SetTimer, PerformContinuousClick, Off
        Send, {Ctrl Up}
        activeFunction := ""
        Return
    } else {
        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "Continuous"
        continuousClickRunning := true
        continuousClickPaused := false
        Send, {Ctrl Down}
        SetTimer, PerformContinuousClick, 50
    }
}
PerformContinuousClick:
    global continuousClickRunning, continuousClickPaused
    if (!continuousClickRunning) {
        SetTimer, PerformContinuousClick, Off
        Return
    }
    if (continuousClickPaused)
        Return
    Click
Return

;------------------------------
; 存倉功能 (F5)
ToggleStore() {
    global storeRunning, storePaused, activeFunction, gameWindowTitle, storeCoords, storeIndex
    if (activeFunction = "Store") {
        storeRunning := false
        storePaused := false
        SetTimer, ProcessStore, Off
        Send, {Ctrl Up}
        activeFunction := ""
        Return
    } else {
        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "Store"
        storeRunning := true
        storePaused := false
        ; 激活遊戲視窗
        IfWinExist, %gameWindowTitle%
            WinActivate
        else {
            MsgBox, %gameWindowTitle% 視窗未找到。
            storeRunning := false
            activeFunction := ""
            Return
        }
        ; 建立背包座標 (5行 x 12列)
        storeCoords := []  
        startX := 459, startY := 365, offsetX := 30, offsetY := 30
        Loop, 5 {
            y := startY + (A_Index - 1) * offsetY
            Loop, 12 {
                x := startX + (A_Index - 1) * offsetX
                storeCoords.Push({x: x, y: y})
            }
        }
        storeIndex := 1
        ; 開始前先按下 Ctrl 並保持按住
        Send, {Ctrl Down}
        ; 使用較穩定的間隔進行座標處理
        SetTimer, ProcessStore, 100
    }
}
ProcessStore:
    global storeRunning, storeCoords, storeIndex, storePaused, activeFunction
    if (!storeRunning) {
        SetTimer, ProcessStore, Off
        Return
    }
    if (storePaused) {
        Send, {Ctrl Up}
        Return
    }
    if (storeIndex > storeCoords.Length()) {
        storeRunning := false
        SetTimer, ProcessStore, Off
        ; 全部座標處理完畢後再放開 Ctrl
        Send, {Ctrl Up}
        activeFunction := ""
        Return
    }
    coord := storeCoords[storeIndex]
    ; 移動至指定座標並延遲，確保位置穩定
    MouseMove, coord.x, coord.y, 0
    Sleep, 30
    ; 執行左鍵點擊（在 Ctrl 按下狀態下）
    MouseClick, left, coord.x, coord.y, 1, 0
    Sleep, 30
    storeIndex++
Return

;------------------------------
; 取倉功能 (F3)
ToggleRetrieve() {
    global retrieveRunning, retrievePaused, activeFunction
    if (activeFunction = "Retrieve") {
        retrieveRunning := false
        retrievePaused := false
        SetTimer, ProcessRetrieve, Off
        Send, {Ctrl Up}
        activeFunction := ""
        Return
    } else {
        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "Retrieve"
        retrieveRunning := true
        retrievePaused := false
        SetTimer, ProcessRetrieve, 50
    }
}
ProcessRetrieve:
    global retrieveRunning, retrievePaused, activeFunction
    if (!retrieveRunning) {
        SetTimer, ProcessRetrieve, Off
        Send, {Ctrl Up}
        activeFunction := ""
        Return
    }
    if (retrievePaused) {
        Send, {Ctrl Up}
        Return
    }
    PixelSearch, pixelX, pixelY, 16, 95, 364, 451, 0x77B4E7, 3, Fast
    if (ErrorLevel)
        Return
    x := pixelX + 2, y := pixelY + 2
    Send, {Ctrl Down}
    Click, %x%, %y%
    Send, {Ctrl Up}
Return

;------------------------------
; 暫停／恢復 熱鍵 (僅作用於目前執行中的功能)
TogglePauseContinuousClick() {
    global continuousClickRunning, continuousClickPaused, activeFunction
    if (activeFunction != "Continuous")
        Return
    continuousClickPaused := !continuousClickPaused
    if (continuousClickPaused)
        Send, {Ctrl Up}
    else
        Send, {Ctrl Down}
}
TogglePauseRetrieve() {
    global retrieveRunning, retrievePaused, activeFunction
    if (activeFunction != "Retrieve")
        Return
    retrievePaused := !retrievePaused
    if (retrievePaused)
        Send, {Ctrl Up}
    else
        Send, {Ctrl Down}
}
TogglePauseStore() {
    global storeRunning, storePaused, activeFunction
    if (activeFunction != "Store")
        Return
    storePaused := !storePaused
    if (storePaused)
        Send, {Ctrl Up}
    else
        Send, {Ctrl Down}
}

;------------------------------
; 重新啟動腳本 (F11)
ReloadScript() {
    Reload
}

; GUI 關閉事件
GuiClose:
    ExitApp
Return
