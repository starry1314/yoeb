#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

storeRunning := false
retrieveRunning := false
continuousClickRunning := false
gameWindowTitle := "Path of Exile"

; 建立 GUI
Gui, Add, Text,, 功能熱鍵: 
Gui, Add, Text,, F2 - 連續點擊
Gui, Add, Text,, F3 - 取倉執行/停止 (篩選高亮物品,左上角第一格不能高亮)
Gui, Add, Text,, F5 - 存倉執行/停止 (將背包物品存入當前倉庫)
Gui, Add, Text,, F11 - 重新啟動

; 設定 GUI 的尺寸並顯示在螢幕右上角
guiWidth := 400  ; GUI 的寬度
guiHeight := 100  ; GUI 的高度
screenWidth := A_ScreenWidth
screenHeight := A_ScreenHeight
guiX := screenWidth - guiWidth  ; GUI 的 x 座標
guiY := 0  ; GUI 的 y 座標
Gui, Show, w%guiWidth% h%guiHeight% x%guiX% y%guiY%, 倉庫管理腳本
WinSet, AlwaysOnTop, , 倉庫管理腳本

Return

; 定義熱鍵
F2::ToggleContinuousClick()
F5::ToggleStore()
F3::ToggleRetrieve()
F11::ReloadScript()

; 連續點擊功能
ToggleContinuousClick() {
    global continuousClickRunning
    continuousClickRunning := !continuousClickRunning
    if (continuousClickRunning) {
        Send, {Ctrl Down}
        SetTimer, PerformContinuousClick, 50
    } else {
        SetTimer, PerformContinuousClick, Off
        Send, {Ctrl Up}
    }
}

PerformContinuousClick:
    if (continuousClickRunning) {
        Click
    }
return

; 切換存倉功能執行/停止
ToggleStore() {
    global storeRunning
    storeRunning := !storeRunning
    if (storeRunning) {
        StoreItems()
    } else {
        storeRunning := false
    }
}

; 存倉功能
StoreItems() {
    global storeRunning
    global gameWindowTitle

    ; 啟動 Path of Exile 遊戲視窗
    IfWinExist, %gameWindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, %gameWindowTitle% 視窗未找到。
        return
    }

    ; 設定背包的起始座標
    startX := 459
    startY := 365
    offsetX := 30
    offsetY := 30

    Loop, 5 {
        y := startY + (A_Index - 1) * offsetY
        Loop, 12 {
            if (!storeRunning)
                return
            x := startX + (A_Index - 1) * offsetX
            MouseMove, x, y
            Sleep, 50
            Send, ^{Click}
            
        }
    }
    storeRunning := false
}

; 切換取倉功能執行/停止
ToggleRetrieve() {
    global retrieveRunning
    retrieveRunning := !retrieveRunning
    if (retrieveRunning) {
        RetrieveItems()
    } else {
        Send, {Ctrl Up}
    }
}

; 取倉功能
RetrieveItems() {
    global retrieveRunning
    pixelX := 0
    pixelY := 0
    maxAttempts := 1200
    attempts := 0
    Send, {Ctrl Down}
    while (retrieveRunning && attempts < maxAttempts) {
        PixelSearch, pixelX, pixelY, 16, 95, 364, 451, 0x77B4E7, 3, Fast
        if (ErrorLevel) {
		Send, {Ctrl Up}
            Send, {Ctrl Up}
			Send, {Ctrl Up}
            break
        } else {
            gemx := pixelX + 2
            gemy := pixelY + 2
            Click, %gemx%, %gemy%
            Sleep, 60
            attempts++
        }
		Send, {Ctrl Up}
    }
    Send, {Ctrl Up}
	Send, {Ctrl Up}
}

; 重新啟動腳本
ReloadScript() {
    Reload
}

; GUI 關閉事件
GuiClose:
    ExitApp
Return
