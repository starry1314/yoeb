#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#NoTrayIcon  ; 隱藏系統托盤圖示
#Include <FindText>  ; 引入 FindText 二值化圖片識別庫
#Include FindText文字碼庫.ahk  ; 引入所有圖片識別文字碼

; ===================================================================
; 反偵測機制 - 隱藏 AHK 特徵 (修正版 - 不影響遊戲視窗)
; ===================================================================

; 1. 設置隨機窗口標題 (僅針對腳本自己的窗口)
RandomWindowTitle := "POE_" . A_TickCount . "_Helper"

; 2. 修改進程優先級為正常（避免異常高優先級）
Process, Priority, , Normal

; 3. 隨機化初始延遲，模擬人類啟動時間
Random, startDelay, 500, 2000
Sleep, %startDelay%

; 4. 初始化 FindText (不影響遊戲視窗)
global FindTextObj := FindText()  ; 獲取 FindText 對象

; ===================================================================
; 全域變數
; ===================================================================
global activeFunction := ""                ; 目前執行中的功能 ("Continuous", "Store", "Retrieve", "OfflineShop")
global continuousClickRunning := false     ; F2 連續點擊執行中
global storeRunning := false               ; F5 存倉執行中
global retrieveRunning := false            ; F3 取倉執行中
global offlineShopRunning := false         ; F6 離線商店執行中
; F2 連續點擊無暫停功能,已移除 continuousClickPaused
global storePaused := false                ; F5 存倉暫停狀態
global retrievePaused := false             ; F3 取倉暫停狀態
global offlineShopPaused := false          ; F6 離線商店暫停狀態
global gameWindowTitle := "Path of Exile"
global storeCoords := []                    ; 存倉用座標陣列
global storeIndex := 1
global retrieveEmptyCount := 0              ; 取倉連續搜尋不到的次數
global retrieveEmptyThreshold := 30         ; 連續搜尋不到 N 次後自動關閉 (約1.5秒)
global bmpFolder := A_ScriptDir . "\bmp"    ; BMP 圖片資料夾路徑
global bmpFiles := []                       ; BMP 檔案列表
global bmpPrices := {}                      ; BMP 價格對照表
global offlineShopIndex := 1                ; 離線商店上架索引
global sellFolder := A_ScriptDir . "\sell"  ; 上架視窗檢測圖片資料夾
global sellBmp := ""                        ; sell.bmp 完整路徑
global sellOkBmp := ""                      ; sell-ok.bmp 完整路徑
global bagBmp := ""                         ; bag.bmp 背包檢測圖片完整路徑
global npcFolder := A_ScriptDir . "\npc"    ; NPC 互動圖片資料夾
global stashNpcBmp := ""                    ; 倉庫NPC.bmp (自動點擊用)
global stashOpenedBmp := ""                 ; 倉庫-已開啟.bmp
global shopNpcBmp := ""                     ; 販售NPC.bmp (自動點擊用)
global shopDialogBmp := ""                  ; 販售-管理商店-對話窗.bmp
global shopManageBmp := ""                  ; 販售-管理商店-已開啟.bmp
global npcOffsetX := 10                     ; NPC 點擊偏移 X
global npcOffsetY := 5                      ; NPC 點擊偏移 Y
global dialogOffsetX := 0                   ; 對話窗點擊偏移 X
global dialogOffsetY := 30                  ; 對話窗點擊偏移 Y
global autoRunning := false                 ; 完整自動化是否執行中
global autoStage := 0                       ; 自動化階段 (0=未啟動, 1=倉庫, 2=取物品, 3=販售, 4=對話窗, 5=管理商店, 6=背包)
global stashScanIndex := 1                  ; 倉庫掃描索引
global stashFoundCount := 0                 ; 倉庫找到的物品數量
global npcClickRetries := 0                 ; 倉庫 NPC 點擊重試次數
global shopClickRetries := 0                ; 販售 NPC 點擊重試次數
global lastDialogClickTime := 0            ; 上次點擊對話窗的時間
global dialogClickRetries := 0              ; 對話窗點擊重試次數
global lastNpcClickTime := 0                ; 上次點擊倉庫 NPC 的時間
global lastShopClickTime := 0               ; 上次點擊販售 NPC 的時間
global npcClickWaitTime := 5000             ; 點擊 NPC 後等待時間 (5秒)

; POE 驗證碼工具設定
global verificationUserIni := A_ScriptDir . "\user.ini"  ; 使用當前目錄的 user.ini
global verificationApiUrl := "http://43.100.2.99:8080/api/message/lastmail"
global verificationApiToken := "123456"
global verificationAccount := ""
global verificationCode := ""
global verificationMonitoring := false
global verificationMonitoringPaused := false
global VerificationAccountInput := ""  ; GUI 控件 - 帳號輸入框
global VerificationCodeDisplay := ""  ; GUI 控件 - 驗證碼顯示

; 驗證碼自動監控相關變數
global Text_驗證碼視窗 := ""  ; FindText 文字碼 - 驗證碼輸入窗口
global verificationClickX := 960  ; 輸入框點擊座標 X (預設螢幕中心)
global verificationClickY := 540  ; 輸入框點擊座標 Y (預設螢幕中心)
global verificationSubmitX := 960  ; 送出按鈕座標 X (預設螢幕中心)
global verificationSubmitY := 600  ; 送出按鈕座標 Y (預設螢幕中心)
global VerificationMonitorBtn := ""  ; GUI 控件 - 監控按鈕
global VerificationClickXInput := ""  ; GUI 控件 - 輸入框 X 座標
global VerificationClickYInput := ""  ; GUI 控件 - 輸入框 Y 座標
global VerificationSubmitXInput := ""  ; GUI 控件 - 送出按鈕 X 座標
global VerificationSubmitYInput := ""  ; GUI 控件 - 送出按鈕 Y 座標

; 座標設定 (可透過 GUI 調整)
; 背包區域: 左上角(455,375) 右下角(805,520) 格子大小30x30
; 實測座標: 第1格(約450-460,370) 第49格(450,490) 第12格(780,370)
; 間距統一為 30,根據第12格反推第1格: 780 - 11×30 = 450
global bagStartX := 450                     ; 背包起始 X (根據第12格反推)
global bagStartY := 370                     ; 背包起始 Y (第一格中心,實測值)
global bagOffsetX := 30                     ; 背包間距 X
global bagOffsetY := 30                     ; 背包間距 Y
global bagRows := 5                         ; 背包行數
global bagCols := 12                        ; 背包列數
global searchX1 := 16                       ; 搜尋區域 X1
global searchY1 := 95                       ; 搜尋區域 Y1
global searchX2 := 364                      ; 搜尋區域 X2
global searchY2 := 451                      ; 搜尋區域 Y2

; 動態延遲設定
global baseDelay := 35                      ; 基礎延遲 (毫秒) - 已調降15%速度
global currentDelay := 35                   ; 當前延遲
global minDelay := 25                       ; 最小延遲 - 已調降15%速度
global maxDelay := 100                      ; 最大延遲
global errorCount := 0                      ; 錯誤計數
global successCount := 0                    ; 成功計數
global adaptiveDelayEnabled := true         ; 是否啟用動態延遲

; 美化 GUI：現代化深色主題設計
Gui, Main:New, , %RandomWindowTitle%  ; 使用隨機窗口標題
Gui, Main:+LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Main:Margin, 0, 0
Gui, Main:Color, 1a1a2e

; 隱藏 GUI 的 AHK 特徵
WinSet, ExStyle, +0x80, A  ; WS_EX_TOOLWINDOW - 讓窗口不出現在任務切換器

; 標題列背景
Gui, Main:Add, Progress, x0 y0 w420 h45 Background2d3250 Disabled

; 標題列文字 (可拖曳區域，避開右側按鈕)
Gui, Main:Font, s12 bold cFFFFFF, Microsoft JhengHei
Gui, Main:Add, Text, x0 y0 w350 h45 BackgroundTrans Center 0x200 gDragGUI, POE 倉庫管理助手

; 視窗控制按鈕 (最小化 & 關閉) - 必須在標題列文字之後添加才能顯示在上層
Gui, Main:Font, s12 bold ccccccc, Segoe UI
Gui, Main:Add, Text, x360 y10 w25 h25 Center gMinimizeMainGUI BackgroundTrans, —
Gui, Main:Font, s11 bold ccccccc, Segoe UI
Gui, Main:Add, Text, x390 y10 w20 h25 Center gCloseMainGUI BackgroundTrans, ✕

; 狀態顯示區
Gui, Main:Font, s9 norm c00ff88, Microsoft JhengHei
Gui, Main:Add, Text, x15 y55 w390 vStatusText, 🟢 待機中 | 按下熱鍵啟動功能

; 功能區塊背景
Gui, Main:Add, Progress, x10 y85 w400 h305 Background16213e Disabled

; 功能說明 - 使用圖示與顏色區分
Gui, Main:Font, s10 bold c4ecdc4, Microsoft JhengHei
Gui, Main:Add, Text, x25 y95, ⚡ F2
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y97, 連續點擊 (Ctrl+點擊) | 再按關閉

Gui, Main:Font, s10 bold c4ecdc4, Microsoft JhengHei
Gui, Main:Add, Text, x25 y120, 📦 F3
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y122, 取倉 (自動篩選高亮物品) | 再按關閉

Gui, Main:Font, s10 bold c4ecdc4, Microsoft JhengHei
Gui, Main:Add, Text, x25 y145, 💾 F5
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y147, 存倉 (依序將背包物品存入) | 再按關閉

Gui, Main:Font, s10 bold c4ecdc4, Microsoft JhengHei
Gui, Main:Add, Text, x25 y170, 🏪 F6
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y172, 離線商店上架 (Ctrl+左鍵+視窗檢測) | 再按關閉

Gui, Main:Font, s10 bold c00d9ff, Microsoft JhengHei
Gui, Main:Add, Text, x25 y195, 💰 Ctrl+F6
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x100 y197, 價格管理視窗 (支援中英文物品名稱)

Gui, Main:Font, s10 bold cff6b6b, Microsoft JhengHei
Gui, Main:Add, Text, x25 y220, ⏸️ Ctrl+F3/F5
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x125 y222, 暫停/恢復對應功能 (F2無暫停)

Gui, Main:Font, s10 bold cff66cc, Microsoft JhengHei
Gui, Main:Add, Text, x25 y245, 🔍 F7
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y247, 圖片識別測試

Gui, Main:Font, s10 bold c00d9ff, Microsoft JhengHei
Gui, Main:Add, Text, x25 y270, 📸 F8
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y272, FindText 抓圖工具

Gui, Main:Font, s10 bold cffa500, Microsoft JhengHei
Gui, Main:Add, Text, x25 y295, ⚙️ F9
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y297, 座標設定

Gui, Main:Font, s10 bold cff00ff, Microsoft JhengHei
Gui, Main:Add, Text, x25 y320, 🤖 F10
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y322, 完整自動化 (倉庫→取物→販售→上架)
Gui, Main:Font, s8 bold c00d9ff, Microsoft JhengHei
Gui, Main:Add, Text, x340 y322 gShowF10Help, [說明?]

Gui, Main:Font, s10 bold cff9f43, Microsoft JhengHei
Gui, Main:Add, Text, x25 y345, 🔄 F11
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y347, 重新啟動腳本

Gui, Main:Font, s10 bold cff4444, Microsoft JhengHei
Gui, Main:Add, Text, x25 y370, ⛔ F12
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y372, 關閉程序

Gui, Main:Font, s10 bold c00d4ff, Microsoft JhengHei
Gui, Main:Add, Text, x25 y395, 🔑 Insert
Gui, Main:Font, s9 norm cadd8e6
Gui, Main:Add, Text, x70 y397, POE 驗證碼工具

; 提示區
Gui, Main:Font, s8 italic c7f8c8d, Microsoft JhengHei
Gui, Main:Add, Text, x15 y425, ℹ️ 按 Ctrl+F6 管理價格 | F7 測試圖片 | 詳見 FindText使用指南.txt

; GUI 顯示在螢幕右上角
guiWidth := 420
guiHeight := 480
guiX := A_ScreenWidth - guiWidth - 10
guiY := 50
Gui, Main:Show, w%guiWidth% h%guiHeight% x%guiX% y%guiY%, POE倉庫管理

Return

; GUI 拖曳功能
DragGUI:
    PostMessage, 0xA1, 2
Return

; GUI 最小化按鈕
MinimizeMainGUI:
    Gui, Main:Minimize
Return

; GUI 關閉按鈕
CloseMainGUI:
    ExitApp
Return

;------------------------------
; 主功能熱鍵
F2::ToggleContinuousClick()
F3::ToggleRetrieve()
F5::ToggleStore()
F6::ToggleOfflineShop()
F7::TestImageRecognition()
F8::OpenFindTextGUI()  ; 啟動 FindText 抓圖工具
F9::ShowCoordSettings()
F10::ToggleFullAuto()
F11::ReloadScript()
Insert::OpenVerificationCodeTool()
^F6::OpenPriceManager()  ; Ctrl+F6 開啟價格管理視窗

; 暫停／恢復熱鍵 (僅作用於目前執行中的功能)
; F2 連續點擊無暫停功能,已移除 ^F2
; Ctrl+F6 已改為價格管理視窗,離線商店上架無暫停功能
^F3::TogglePauseRetrieve()
^F5::TogglePauseStore()

;------------------------------
; 停止所有功能，確保任一時刻只有一個功能在執行
StopAllFunctions() {
    global continuousClickRunning, storeRunning, retrieveRunning, offlineShopRunning
    global storePaused, retrievePaused, offlineShopPaused
    global activeFunction, retrieveEmptyCount
    continuousClickRunning := false
    storeRunning := false
    retrieveRunning := false
    offlineShopRunning := false
    storePaused := false
    retrievePaused := false
    offlineShopPaused := false
    retrieveEmptyCount := 0
    SetTimer, PerformContinuousClick, Off
    SetTimer, ProcessStore, Off
    SetTimer, ProcessRetrieve, Off
    SetTimer, ProcessOfflineShop, Off
    ; 安全釋放所有修飾鍵
    Send, {Ctrl Up}
    Send, {Alt Up}
    activeFunction := ""
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
}

; 更新狀態文字
UpdateStatusText(text) {
    GuiControl, Main:, StatusText, %text%
}

; 載入價格設定檔
LoadPrices() {
    global bmpFolder, bmpPrices
    pricesFile := bmpFolder . "\prices.ini"
    bmpPrices := {}

    IfNotExist, %pricesFile%
    {
        ; 如果檔案不存在,建立範例檔案 (UTF-8 with BOM 編碼)
        FileDelete, %pricesFile%
        FileAppend,
        (
`; ===================================================================
`; 物品名稱與價格對照表 (用於倉庫自動取出)
`; ===================================================================
`;
`; 格式說明:
`; 遊戲內物品名稱=價格
`;
`; 重要提示:
`; 1. 物品名稱必須與遊戲內 Ctrl+C 複製的物品名稱完全一致
`; 2. 物品名稱取自剪貼簿內容第一個「--------」分隔線上方的文字
`; 3. 支援中文和英文名稱
`; 4. 價格可以是整數或小數 (例如: 1, 150, 0.5)
`; 5. 分號 `; 開頭的行會被忽略
`; 6. 空行會被忽略
`;
`; 如何取得正確的物品名稱:
`; 1. 在遊戲中將滑鼠移到物品上
`; 2. 按 Ctrl+C 複製物品資訊
`; 3. 打開記事本貼上，查看「--------」上方的文字
`; 4. 將該文字作為物品名稱填入此檔案
`;
`; 範例:
`; 混沌石=1
`; 崇高石=150
`; 神聖石=80
`; 熾熱之邀=80
`; Chaos Orb=1
`; Exalted Orb=150
`;
`; ===================================================================
`; 請在下方新增你的物品價格設定:
`; ===================================================================

        ), %pricesFile%, UTF-8
        Return
    }

    ; 使用 FileRead 讀取整個檔案 (支援 UTF-8)
    FileRead, fileContent, %pricesFile%

    ; 逐行解析
    Loop, Parse, fileContent, `n, `r
    {
        line := Trim(A_LoopField)

        ; 跳過空行和註釋行
        if (line = "" or SubStr(line, 1, 1) = ";")
            Continue

        ; 跳過 [Prices] 標題行
        if (line = "[Prices]")
            Continue

        ; 查找等號位置
        equalPos := InStr(line, "=")
        if (equalPos > 0) {
            ; 分割檔名和價格
            itemName := Trim(SubStr(line, 1, equalPos - 1))
            price := Trim(SubStr(line, equalPos + 1))

            ; 只有當檔名和價格都不為空時才加入
            if (itemName != "" && price != "") {
                bmpPrices[itemName] := price
            }
        }
    }
}

; 取得遊戲視窗範圍
GetGameWindowRect() {
    WinGet, hwnd, ID, ahk_class POEWindowClass
    if (!hwnd) {
        Return {x: 0, y: 0, w: A_ScreenWidth, h: A_ScreenHeight}
    }

    WinGetPos, winX, winY, winW, winH, ahk_id %hwnd%
    Return {x: winX, y: winY, w: winW, h: winH}
}

; 從剪貼簿內容解析物品名稱
; 物品名稱在第一個 "--------" 上方
GetItemNameFromClipboard() {
    clipContent := Clipboard
    if (clipContent = "") {
        Return ""
    }

    ; 按行分割
    lines := []
    Loop, Parse, clipContent, `n, `r
    {
        line := Trim(A_LoopField)
        if (line != "") {
            lines.Push(line)
        }
    }

    ; 找到第一個 "--------" 並取得上方的行
    Loop, % lines.MaxIndex()
    {
        line := lines[A_Index]
        ; 檢查是否為分隔線 (至少 4 個連續的 -)
        if (InStr(line, "----")) {
            ; 返回前一行作為物品名稱
            if (A_Index > 1) {
                Return Trim(lines[A_Index - 1])
            }
            Break
        }
    }

    ; 如果沒有找到分隔線,返回第一行
    if (lines.MaxIndex() > 0) {
        Return Trim(lines[1])
    }

    Return ""
}

; 隨機延遲 - 模擬人類操作 (增強版 - 更自然的延遲模式)
RandomSleep(min, max) {
    ; 基礎隨機延遲
    Random, delay, %min%, %max%

    ; 30% 機率加入額外延遲，模擬人類思考/分心
    Random, extraChance, 1, 100
    if (extraChance <= 30) {
        Random, extraDelay, 20, 100
        delay += extraDelay
    }

    ; 5% 機率加入更長延遲，模擬人類偶爾停頓
    Random, pauseChance, 1, 100
    if (pauseChance <= 5) {
        Random, pauseDelay, 100, 300
        delay += pauseDelay
    }

    Sleep, %delay%
}

; 人性化滑鼠移動 (非直線，帶有曲線和速度變化)
HumanMouseMove(targetX, targetY, speed := 2) {
    MouseGetPos, startX, startY

    ; 計算距離
    distance := Sqrt((targetX - startX)**2 + (targetY - startY)**2)

    ; 如果距離很短，直接移動
    if (distance < 5) {
        MouseMove, %targetX%, %targetY%, 0
        Return
    }

    ; 分段移動，加入隨機偏移和速度變化
    steps := Ceil(distance / 15)  ; 每 15 像素一步 (更細膩)

    ; 隨機選擇曲線方向 (左彎或右彎)
    Random, curveDirection, 0, 1
    curveFactor := curveDirection ? 1 : -1

    Loop, %steps%
    {
        progress := A_Index / steps

        ; 貝塞爾曲線控制點 (模擬手部移動弧線)
        ; 使用拋物線函數製造自然弧度
        curveIntensity := Sin(progress * 3.14159) * 8 * curveFactor
        Random, curveNoise, -3, 3  ; 加入噪音

        currentX := startX + (targetX - startX) * progress + curveIntensity + curveNoise
        currentY := startY + (targetY - startY) * progress + curveIntensity + curveNoise

        MouseMove, %currentX%, %currentY%, 0

        ; 速度變化：開始慢 → 中間快 → 結束慢 (模擬人類滑鼠移動)
        if (progress < 0.3)
            stepDelay := 3  ; 起始階段較慢
        else if (progress > 0.7)
            stepDelay := 2  ; 結束階段減速
        else
            stepDelay := 1  ; 中間階段較快

        Random, delayNoise, 0, 2
        Sleep, stepDelay + delayNoise
    }

    ; 最後移動到精確位置,並加入微小抖動
    MouseMove, %targetX%, %targetY%, 0
    MouseJitter()  ; 到達後的自然抖動
}

; 人性化鍵盤輸入 (隨機按鍵間隔和速度變化)
HumanSend(text) {
    textLength := StrLen(text)
    Loop, Parse, text
    {
        Send, %A_LoopField%

        ; 基礎隨機延遲 40-100ms
        Random, keyDelay, 40, 100

        ; 10% 機率打字較快 (模擬熟練區段)
        Random, fastChance, 1, 100
        if (fastChance <= 10) {
            keyDelay := keyDelay * 0.6  ; 減少 40% 延遲
        }

        ; 15% 機率打字較慢 (模擬思考/猶豫)
        Random, slowChance, 1, 100
        if (slowChance <= 15) {
            Random, slowExtra, 50, 150
            keyDelay += slowExtra
        }

        Sleep, %keyDelay%
    }
}

; 模擬滑鼠抖動 (人類不可能完全靜止 - 增強版)
MouseJitter() {
    MouseGetPos, mx, my

    ; 70% 機率產生抖動 (不是每次都抖)
    Random, jitterChance, 1, 100
    if (jitterChance > 70)
        Return

    ; 隨機抖動幅度 (-3 到 +3 像素)
    Random, jitterX, -3, 3
    Random, jitterY, -3, 3

    ; 第一次抖動
    MouseMove, mx + jitterX, my + jitterY, 0
    RandomSleep(15, 40)

    ; 50% 機率產生第二次微調
    Random, doubleJitter, 1, 100
    if (doubleJitter <= 50) {
        Random, jitterX2, -1, 1
        Random, jitterY2, -1, 1
        MouseMove, mx + jitterX2, my + jitterY2, 0
        RandomSleep(10, 25)
    }

    ; 回到原位 (有時不完全回到原位,模擬真實情況)
    Random, returnExact, 1, 100
    if (returnExact <= 80) {
        MouseMove, mx, my, 0
    }
}

; ===================================================================
; FindText 封裝函數 - 階梯式容錯度搜尋
; ===================================================================

; 階梯式 FindText 搜尋 (自動嘗試多個容錯度: 0 → 0.05 → 0.1)
; 參數:
;   textCode - FindText 文字碼
;   x1, y1, x2, y2 - 搜尋範圍 (傳 0 使用全螢幕)
; 返回: {found: true/false, x: X座標, y: Y座標, width: 寬度, height: 高度, tolerance: 使用的容錯度, result: FindText原始返回值}
FindImage_Tiered(textCode, x1 := 0, y1 := 0, x2 := 0, y2 := 0) {
    local ok, X, Y

    ; 如果沒有文字碼，直接返回未找到
    if (textCode = "") {
        Return {found: false, x: 0, y: 0, width: 0, height: 0, tolerance: 0, result: ""}
    }

    ; 嘗試 1: 精確匹配 (err=0, 0)
    ok := FindText(X, Y, x1, y1, x2, y2, 0, 0, textCode)
    if (ok) {
        Return {found: true, x: ok[1].x, y: ok[1].y, width: ok[1][3], height: ok[1][4], tolerance: 0, result: ok}
    }

    ; 嘗試 2: 5% 容錯 (err=0.05, 0.05)
    ok := FindText(X, Y, x1, y1, x2, y2, 0.05, 0.05, textCode)
    if (ok) {
        Return {found: true, x: ok[1].x, y: ok[1].y, width: ok[1][3], height: ok[1][4], tolerance: 0.05, result: ok}
    }

    ; 嘗試 3: 10% 容錯 (err=0.1, 0.1)
    ok := FindText(X, Y, x1, y1, x2, y2, 0.1, 0.1, textCode)
    if (ok) {
        Return {found: true, x: ok[1].x, y: ok[1].y, width: ok[1][3], height: ok[1][4], tolerance: 0.1, result: ok}
    }

    ; 未找到
    Return {found: false, x: 0, y: 0, width: 0, height: 0, tolerance: 0, result: ""}
}

; NPC 專用搜尋 (含偏移座標處理)
; 參數:
;   textCode - NPC 的 FindText 文字碼
;   offsetX, offsetY - 點擊偏移 (預設 10, 5)
;   x1, y1, x2, y2 - 搜尋範圍
; 返回: {found, x, y, clickX, clickY, tolerance}
FindNPC(textCode, offsetX := 10, offsetY := 5, x1 := 0, y1 := 0, x2 := 0, y2 := 0) {
    result := FindImage_Tiered(textCode, x1, y1, x2, y2)

    if (result.found) {
        ; 計算點擊座標 (中心點 + 偏移)
        clickX := result.x + offsetX
        clickY := result.y + offsetY

        Return {found: true, x: result.x, y: result.y, clickX: clickX, clickY: clickY, tolerance: result.tolerance, width: result.width, height: result.height}
    }

    Return {found: false, x: 0, y: 0, clickX: 0, clickY: 0, tolerance: 0, width: 0, height: 0}
}

; 介面專用搜尋 (無偏移)
; 參數:
;   textCode - 介面的 FindText 文字碼
;   x1, y1, x2, y2 - 搜尋範圍
; 返回: {found, x, y, tolerance}
FindUI(textCode, x1 := 0, y1 := 0, x2 := 0, y2 := 0) {
    result := FindImage_Tiered(textCode, x1, y1, x2, y2)

    Return {found: result.found, x: result.x, y: result.y, tolerance: result.tolerance, width: result.width, height: result.height}
}

; 動態延遲調整
AdjustDelay(success := true) {
    global currentDelay, minDelay, maxDelay, errorCount, successCount, adaptiveDelayEnabled

    if (!adaptiveDelayEnabled)
        Return

    if (success) {
        successCount++
        errorCount := 0
        ; 連續成功3次,降低延遲
        if (successCount >= 3) {
            currentDelay := Max(minDelay, currentDelay - 5)
            successCount := 0
        }
    } else {
        errorCount++
        successCount := 0
        ; 發生錯誤,增加延遲
        currentDelay := Min(maxDelay, currentDelay + 10)
    }
}

; 智能等待
SmartSleep(multiplier := 1) {
    global currentDelay
    Sleep, currentDelay * multiplier
}

;------------------------------
; 連續點擊功能 (F2) - 只有啟動和關閉,無暫停功能
ToggleContinuousClick() {
    global continuousClickRunning, activeFunction
    if (activeFunction = "Continuous") {
        ; 關閉功能,安全釋放 Ctrl
        continuousClickRunning := false
        SetTimer, PerformContinuousClick, Off
        Send, {Ctrl Up}
        activeFunction := ""
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        Return
    } else {
        ; 啟動功能
        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "Continuous"
        continuousClickRunning := true
        Send, {Ctrl Down}
        SetTimer, PerformContinuousClick, 50
        UpdateStatusText("⚡ 連續點擊執行中... | 再按 F2 停止")
    }
}
PerformContinuousClick:
    global continuousClickRunning
    if (!continuousClickRunning) {
        SetTimer, PerformContinuousClick, Off
        Return
    }
    ; Ctrl 保持按住,直接點擊
    Click
Return

;------------------------------
; 存倉功能 (F5)
ToggleStore() {
    global storeRunning, storePaused, activeFunction, gameWindowTitle, storeCoords, storeIndex
    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols
    if (activeFunction = "Store") {
        storeRunning := false
        storePaused := false
        SetTimer, ProcessStore, Off
        Send, {Ctrl Up}
        activeFunction := ""
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
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
            UpdateStatusText("❌ 錯誤 | 找不到遊戲視窗")
            Return
        }
        ; 建立背包座標 (使用全域變數)
        storeCoords := []
        Loop, %bagRows% {
            y := bagStartY + (A_Index - 1) * bagOffsetY
            Loop, %bagCols% {
                x := bagStartX + (A_Index - 1) * bagOffsetX
                storeCoords.Push({x: x, y: y})
            }
        }
        storeIndex := 1
        totalSlots := bagRows * bagCols
        ; 開始前先按下 Ctrl 並保持按住
        Send, {Ctrl Down}
        ; 使用較穩定的間隔進行座標處理 (已調降15%速度避免Request interrupted)
        SetTimer, ProcessStore, 115
        UpdateStatusText("💾 存倉執行中... (0/" . totalSlots . ") | 再按 F5 停止")
    }
}
ProcessStore:
    global storeRunning, storeCoords, storeIndex, storePaused, activeFunction
    if (!storeRunning) {
        SetTimer, ProcessStore, Off
        Return
    }
    if (storePaused) {
        ; 暫停時安全釋放 Ctrl
        Send, {Ctrl Up}
        UpdateStatusText("⏸️ 存倉已暫停 | Ctrl+F5 恢復")
        Return
    }
    if (storeIndex > storeCoords.MaxIndex()) {
        storeRunning := false
        SetTimer, ProcessStore, Off
        ; 全部座標處理完畢後安全釋放 Ctrl
        Send, {Ctrl Up}
        activeFunction := ""
        UpdateStatusText("✅ 存倉完成 (60/60)")
        Sleep, 1500
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        Return
    }
    coord := storeCoords[storeIndex]
    ; 移動至指定座標並延遲，確保位置穩定
    MouseMove, coord.x, coord.y, 0
    SmartSleep(1)
    ; 執行左鍵點擊（Ctrl 保持按住狀態，不重複按放）
    Click
    SmartSleep(1)

    ; 動態調整延遲 (假設成功)
    AdjustDelay(true)

    ; 更新進度
    progress := storeIndex
    total := storeCoords.MaxIndex()
    UpdateStatusText("💾 存倉執行中... (" . progress . "/" . total . ") 延遲:" . currentDelay . "ms")
    storeIndex++
Return

;------------------------------
; 取倉功能 (F3)
ToggleRetrieve() {
    global retrieveRunning, retrievePaused, activeFunction, retrieveEmptyCount
    if (activeFunction = "Retrieve") {
        ; 關閉功能,安全釋放 Ctrl
        retrieveRunning := false
        retrievePaused := false
        retrieveEmptyCount := 0
        SetTimer, ProcessRetrieve, Off
        Send, {Ctrl Up}
        activeFunction := ""
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        Return
    } else {
        ; 啟動功能
        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "Retrieve"
        retrieveRunning := true
        retrievePaused := false
        retrieveEmptyCount := 0
        ; 啟動時按住 Ctrl 並保持
        Send, {Ctrl Down}
        SetTimer, ProcessRetrieve, 50
        UpdateStatusText("📦 取倉執行中... (搜尋物品) | 再按 F3 停止")
    }
}
ProcessRetrieve:
    global retrieveRunning, retrievePaused, activeFunction
    global retrieveEmptyCount, retrieveEmptyThreshold
    global searchX1, searchY1, searchX2, searchY2
    if (!retrieveRunning) {
        SetTimer, ProcessRetrieve, Off
        Return
    }
    if (retrievePaused) {
        ; 暫停時安全釋放 Ctrl
        Send, {Ctrl Up}
        UpdateStatusText("⏸️ 取倉已暫停 | Ctrl+F3 恢復")
        Return
    }
    ; 搜尋高亮物品 (使用全域座標)
    PixelSearch, pixelX, pixelY, %searchX1%, %searchY1%, %searchX2%, %searchY2%, 0x77B4E7, 3, Fast
    if (ErrorLevel) {
        ; 未找到物品,計數器+1
        retrieveEmptyCount++
        ; 檢查是否超過閾值
        if (retrieveEmptyCount >= retrieveEmptyThreshold) {
            ; 自動關閉功能,安全釋放 Ctrl
            retrieveRunning := false
            retrieveEmptyCount := 0
            SetTimer, ProcessRetrieve, Off
            Send, {Ctrl Up}
            activeFunction := ""
            UpdateStatusText("✅ 取倉完成 (無更多物品)")
            Sleep, 1500
            UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        }
        Return
    }
    ; 找到物品,重置計數器並點擊 (Ctrl 保持按住狀態)
    retrieveEmptyCount := 0
    x := pixelX + 2, y := pixelY + 2
    Click, %x%, %y%
    UpdateStatusText("📦 取倉執行中... (找到物品!) | 再按 F3 停止")
Return

;------------------------------
; 暫停／恢復 熱鍵 (僅作用於目前執行中的功能)
; F2 連續點擊已移除暫停功能
TogglePauseRetrieve() {
    global retrieveRunning, retrievePaused, activeFunction
    if (activeFunction != "Retrieve")
        Return
    retrievePaused := !retrievePaused
    if (retrievePaused) {
        ; 暫停時安全釋放 Ctrl
        Send, {Ctrl Up}
        UpdateStatusText("⏸️ 取倉已暫停 | Ctrl+F3 恢復")
    } else {
        ; 恢復時重新按下 Ctrl
        Send, {Ctrl Down}
        UpdateStatusText("📦 取倉執行中... (搜尋物品) | 再按 F3 停止")
    }
}
TogglePauseStore() {
    global storeRunning, storePaused, activeFunction, storeIndex, storeCoords
    if (activeFunction != "Store")
        Return
    storePaused := !storePaused
    if (storePaused) {
        ; 暫停時安全釋放 Ctrl
        Send, {Ctrl Up}
        UpdateStatusText("⏸️ 存倉已暫停 | Ctrl+F5 恢復")
    } else {
        ; 恢復時重新按下 Ctrl
        Send, {Ctrl Down}
        progress := storeIndex
        total := storeCoords.MaxIndex()
        UpdateStatusText("💾 存倉執行中... (" . progress . "/" . total . ") | 再按 F5 停止")
    }
}

;------------------------------
; 離線商店上架功能 (F6)
ToggleOfflineShop() {
    global offlineShopRunning, offlineShopPaused, activeFunction
    global bmpFolder, bmpFiles, bmpPrices, offlineShopIndex
    if (activeFunction = "OfflineShop") {
        offlineShopRunning := false
        offlineShopPaused := false
        SetTimer, ProcessOfflineShop, Off
        Send, {Alt Up}
        activeFunction := ""
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        Return
    } else {
        ; 詢問是否啟用
        MsgBox, 4, 離線商店上架, 確定要啟動離線商店上架功能嗎？`n`n此功能會使用 Alt+右鍵 將背包物品依序上架。`n`n(BMP 資料夾內的圖片會用於自動判斷並輸入價格)
        IfMsgBox, No
            Return

        ; 載入價格設定
        LoadPrices()

        ; 載入 BMP 圖片列表
        bmpFiles := []
        Loop, Files, %bmpFolder%\*.bmp
        {
            bmpFiles.Push(A_LoopFileFullPath)
        }

        if (bmpFiles.MaxIndex() = "" || bmpFiles.MaxIndex() = 0) {
            MsgBox, 警告：bmp 資料夾內沒有找到任何 .bmp 圖片檔案！`n`n請先將需要識別的物品圖片放入 bmp 資料夾。
            Return
        }

        ; 檢查價格設定
        priceCount := 0
        for key, value in bmpPrices
            priceCount++

        if (priceCount = 0) {
            MsgBox, 4, 價格設定提醒, 未找到價格設定檔或設定為空。`n`n是否繼續？(物品會上架但不會自動輸入價格)`n`n請編輯 bmp\prices.ini 設定價格。
            IfMsgBox, No
                Return
        }

        ; 載入 sell 資料夾的檢測圖片
        sellBmp := sellFolder . "\sell.bmp"
        sellOkBmp := sellFolder . "\sell-ok.bmp"
        bagBmp := sellFolder . "\bag.bmp"

        ; 檢查 sell 圖片是否存在
        IfNotExist, %sellBmp%
        {
            MsgBox, 48, 警告, 未找到 sell.bmp 檢測圖片！`n`n請將上架視窗的截圖命名為 sell.bmp 並放入 sell 資料夾。`n`n路徑: %sellFolder%
            Return
        }

        IfNotExist, %sellOkBmp%
        {
            MsgBox, 48, 警告, 未找到 sell-ok.bmp 檢測圖片！`n`n請將確認按鈕的截圖命名為 sell-ok.bmp 並放入 sell 資料夾。`n`n路徑: %sellFolder%
            Return
        }

        IfNotExist, %bagBmp%
        {
            MsgBox, 48, 警告, 未找到 bag.bmp 檢測圖片！`n`n請將背包特徵的截圖命名為 bag.bmp 並放入 sell 資料夾。`n`n路徑: %sellFolder%`n`n用途: 檢測是否已回到背包,避免誤關閉背包。
            Return
        }

        if (activeFunction != "")
            StopAllFunctions()
        activeFunction := "OfflineShop"
        offlineShopRunning := true
        offlineShopPaused := false
        offlineShopIndex := 1
        bmpLoadedCount := bmpFiles.MaxIndex()
        if (bmpLoadedCount = "")
            bmpLoadedCount := 0
        SetTimer, ProcessOfflineShop, 150
        UpdateStatusText("🏪 離線商店上架中... (已載入 " . bmpLoadedCount . " 個圖片) | 再按 F6 停止")
    }
}

ProcessOfflineShop:
    global offlineShopRunning, activeFunction
    global storeCoords, offlineShopIndex, bmpFiles, bmpPrices
    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols

    if (!offlineShopRunning) {
        SetTimer, ProcessOfflineShop, Off
        Return
    }

    ; 暫時關閉 Timer 避免重複觸發
    SetTimer, ProcessOfflineShop, Off

    ; 建立背包座標 (如果尚未建立)
    if (storeCoords.MaxIndex() = "" || storeCoords.MaxIndex() = 0) {
        Loop, %bagRows% {
            y := bagStartY + (A_Index - 1) * bagOffsetY
            Loop, %bagCols% {
                x := bagStartX + (A_Index - 1) * bagOffsetX
                storeCoords.Push({x: x, y: y})
            }
        }
    }

    totalSlots := bagRows * bagCols
    if (offlineShopIndex > totalSlots) {
        offlineShopRunning := false
        SetTimer, ProcessOfflineShop, Off
        Send, {Alt Up}
        activeFunction := ""
        UpdateStatusText("✅ 離線商店上架完成")
        Sleep, 1500
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        storeCoords := []
        Return
    }

    coord := storeCoords[offlineShopIndex]

    ; 使用剪貼簿判斷模式 (人性化操作)
    ; 1. 人性化移動滑鼠到格子
    HumanMouseMove(coord.x, coord.y, 2)
    RandomSleep(60, 120)  ; 隨機延遲 60-120ms

    ; 2. 清空剪貼簿
    Clipboard := ""

    ; 3. 執行 Ctrl+C 複製物品資訊
    Send, ^c

    ; 4. 檢查剪貼簿是否有內容 (最多等待 200ms)
    ClipWait, 0.2
    if (ErrorLevel) {
        ; 剪貼簿為空,表示格子沒有物品,跳過
        UpdateStatusText("🏪 離線商店上架中... (" . offlineShopIndex . "/" . totalSlots . ") 空格 | F6 停止")
        offlineShopIndex++
        SetTimer, ProcessOfflineShop, 50
        Return
    }

    ; 5. 解析物品名稱 (第一個 ---- 上方)
    itemName := GetItemNameFromClipboard()
    if (itemName = "") {
        ; 無法解析物品名稱,跳過
        UpdateStatusText("🏪 離線商店上架中... (" . offlineShopIndex . "/" . totalSlots . ") 無法識別 | F6 停止")
        offlineShopIndex++
        SetTimer, ProcessOfflineShop, 50
        Return
    }

    ; 6. 檢查是否有對應價格
    price := bmpPrices[itemName]
    if (price != "") {
        ; 有價格設定,執行上架
        foundMatch := true
        matchedFileName := itemName
    } else {
        ; 沒有價格設定,跳過
        UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") 跳過:" . itemName . " (無價格設定)")
        offlineShopIndex++
        SetTimer, ProcessOfflineShop, 50
        Return
    }

    if (foundMatch) {
        ; 有價格設定,執行上架 (Ctrl+左鍵)
        global sellBmp, sellOkBmp

        ; 使用人性化滑鼠移動
        HumanMouseMove(coord.x, coord.y, 2)
        RandomSleep(80, 150)  ; 隨機延遲

        ; 使用 Ctrl+左鍵開啟上架視窗 (人性化按鍵)
        Send, {Ctrl Down}
        RandomSleep(30, 70)  ; 按住 Ctrl 後的自然延遲
        Click
        RandomSleep(50, 100)  ; 點擊後的短暫延遲
        Send, {Ctrl Up}
        RandomSleep(150, 250)  ; 等待視窗開啟,增加隨機性

        ; === 階段 1: 循環等待上架視窗 (sell.bmp) 出現 ===
        ; 限制搜尋範圍為 1024x768 (視窗大小),容錯度 150
        global bagBmp
        sellWindowFound := false
        global Text_Sell視窗, Text_Bag

        maxRetries := 20  ; 最多等待 1 秒 (20 x 50ms)
        Loop, %maxRetries% {
            sellResult := FindUI(Text_Sell視窗, 0, 0, 1024, 768)
            if (sellResult.found) {
                sellWindowFound := true
                Break
            }
            Sleep, 50
        }

        ; 如果視窗沒出現,檢查是否已回到背包
        if (!sellWindowFound) {
            ; 先檢查是否已經在背包畫面
            bagResult := FindUI(Text_Bag, 0, 0, 1024, 768)
            if (bagResult.found) {
                ; 已在背包,不需要按 Esc
                UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") ❌ 視窗未出現:" . matchedFileName . " | 已在背包,繼續")
            } else {
                ; 不在背包,按 Esc 關閉可能的殘留視窗
                Send, {Esc}
                Sleep, 200
                UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") ❌ 視窗未出現:" . matchedFileName . " | 已關閉")
            }
            AdjustDelay(false)
            offlineShopIndex++
            ; 重新啟動 Timer 處理下一個格子
            SetTimer, ProcessOfflineShop, 100
            Return
        }

        ; === 階段 2: 視窗已確認出現,輸入價格 ===
        UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") 📝 輸入價格:" . matchedFileName . " = " . price)
        RandomSleep(150, 300)  ; 模擬人類反應時間

        ; 使用人性化鍵盤輸入
        HumanSend(price)
        RandomSleep(120, 200)  ; 確保價格輸入完成

        ; 按下 Enter 確認
        Send, {Enter}
        RandomSleep(250, 400)  ; 等待視窗反應,增加隨機性

        ; === 階段 3: 循環等待確認按鈕 (sell-ok) 出現 ===
        global Text_SellOK

        sellOkFound := false
        maxOkRetries := 20  ; 最多等待 1 秒 (20 x 50ms)
        Loop, %maxOkRetries% {
            okResult := FindUI(Text_SellOK, 0, 0, 1024, 768)
            if (okResult.found) {
                sellOkFound := true
                Break
            }
            Sleep, 50
        }

        ; 如果確認失敗,檢查是否已回到背包
        if (!sellOkFound) {
            ; 先檢查是否已經在背包畫面
            bagResult := FindUI(Text_Bag, 0, 0, 1024, 768)
            if (bagResult.found) {
                ; 已在背包,不需要按 Esc
                UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") ⚠️ 未確認:" . matchedFileName . " | 已在背包,繼續")
            } else {
                ; 不在背包,按 Esc 關閉視窗
                Send, {Esc}
                Sleep, 200
                UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") ⚠️ 未確認:" . matchedFileName . " | 視窗已關閉")
            }
            AdjustDelay(false)
        } else {
            ; === 階段 4: 成功完成,等待視窗關閉 ===
            Sleep, 150
            UpdateStatusText("🏪 上架中... (" . offlineShopIndex . "/" . totalSlots . ") ✅ 已上架:" . matchedFileName . " 價格:" . price)
            AdjustDelay(true)
        }
    }

    offlineShopIndex++
    ; 重新啟動 Timer 處理下一個格子
    SetTimer, ProcessOfflineShop, 100
Return

; 離線商店上架功能已移除暫停功能 (Ctrl+F6 改為價格管理視窗)

;------------------------------
; F7 - 圖片識別測試工具
TestImageRecognition() {
    global bmpFolder, bmpFiles, bmpPrices
    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols

    ; 載入 BMP 檔案和價格
    bmpFiles := []
    Loop, Files, %bmpFolder%\*.bmp
    {
        bmpFiles.Push(A_LoopFileFullPath)
    }

    if (bmpFiles.MaxIndex() = "" || bmpFiles.MaxIndex() = 0) {
        MsgBox, 48, 測試失敗, 未找到任何 BMP 圖片!`n`n請先使用 F8 截圖工具建立物品圖片。`n`n圖片路徑: %bmpFolder%
        Return
    }

    ; 載入價格設定
    LoadPrices()

    ; 顯示測試 GUI
    Gui, TestImage:New, +AlwaysOnTop +ToolWindow
    Gui, TestImage:Color, 2d2d44
    Gui, TestImage:Font, s11 bold cFFFFFF, Microsoft JhengHei
    Gui, TestImage:Add, Text, x10 y10 w480 h35 Center, 🔍 圖片識別測試工具

    Gui, TestImage:Font, s9 norm cDDDDDD, Microsoft JhengHei
    bmpCount := bmpFiles.MaxIndex()
    if (bmpCount = "")
        bmpCount := 0
    Gui, TestImage:Add, Text, x20 y55, 已載入 %bmpCount% 個 BMP 圖片

    ; 顯示圖片列表
    Gui, TestImage:Font, s9 norm cadd8e6
    Gui, TestImage:Add, Text, x20 y85, 圖片列表:

    imageList := ""
    priceList := ""
    For index, bmpPath in bmpFiles {
        SplitPath, bmpPath, fileName, , , fileNameNoExt
        price := bmpPrices[fileNameNoExt]
        priceText := (price != "") ? "價格: " . price : "❌ 無價格"
        imageList .= index . ". " . fileName . "`n"
        priceList .= priceText . "`n"
    }

    Gui, TestImage:Add, ListBox, x20 y110 w280 h150, %imageList%
    Gui, TestImage:Font, s9 norm cff9f43
    Gui, TestImage:Add, ListBox, x310 y110 w170 h150, %priceList%

    ; 測試說明
    Gui, TestImage:Font, s9 norm cDDDDDD, Microsoft JhengHei
    Gui, TestImage:Add, Text, x20 y275, 測試步驟:
    Gui, TestImage:Font, s8 norm cadd8e6
    Gui, TestImage:Add, Text, x20 y295, 1. 開啟遊戲並打開背包
    Gui, TestImage:Add, Text, x20 y312, 2. 將要測試的物品放入背包
    Gui, TestImage:Add, Text, x20 y329, 3. 點擊「開始測試」
    Gui, TestImage:Add, Text, x20 y346, 4. 腳本會掃描整個背包並標記找到的物品

    ; 按鈕
    Gui, TestImage:Font, s10 bold c000000, Microsoft JhengHei
    Gui, TestImage:Add, Button, x20 y380 w100 h40 gStartCoordTest, 座標測試
    Gui, TestImage:Add, Button, x130 y380 w100 h40 gStartImageTest, 圖片測試
    Gui, TestImage:Add, Button, x240 y380 w120 h40 gTestNPCImages, NPC圖片測試
    Gui, TestImage:Add, Button, x370 y380 w110 h40 gCloseImageTest, 取消

    Gui, TestImage:Show, w500 h440, 圖片識別測試
}

StartCoordTest:
    Gui, TestImage:Hide
    UpdateStatusText("📍 座標測試中... 滑鼠將移動到每個格子 | 按 ESC 停止")

    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols

    ; 倒數 3 秒讓使用者準備
    Loop, 3 {
        countdown := 4 - A_Index
        UpdateStatusText("📍 座標測試 " . countdown . " 秒後開始... | 按 ESC 停止")
        Sleep, 1000
    }

    ; 掃描背包每個格子
    slotNum := 0
    Loop, %bagRows% {
        row := A_Index
        y := bagStartY + (row - 1) * bagOffsetY
        Loop, %bagCols% {
            col := A_Index
            x := bagStartX + (col - 1) * bagOffsetX
            slotNum++

            ; 移動滑鼠到格子中心
            MouseMove, %x%, %y%, 0

            ; 更新狀態顯示當前格子資訊
            UpdateStatusText("📍 格子[" . row . "," . col . "] #" . slotNum . " 座標(" . x . "," . y . ") | 按 ESC 停止")

            ; 延遲 300ms 讓使用者看清楚
            Sleep, 300

            ; 檢查是否按 ESC 停止
            if GetKeyState("Esc", "P") {
                UpdateStatusText("⏹️ 座標測試已停止")
                Sleep, 1500
                UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
                Return
            }
        }
    }

    UpdateStatusText("✅ 座標測試完成!共測試 " . slotNum . " 個格子")
    Sleep, 2000
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

StartImageTest:
    Gui, TestImage:Hide
    UpdateStatusText("🔍 測試中... 請稍候")

    global bmpFiles, bmpPrices, bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols

    ; 測試結果
    foundItems := []
    debugInfo := []  ; 除錯資訊
    totalSlots := bagRows * bagCols
    testIndex := 1
    testCount := 0  ; 測試次數

    ; 掃描背包每個格子
    Loop, %bagRows% {
        row := A_Index
        y := bagStartY + (row - 1) * bagOffsetY
        Loop, %bagCols% {
            col := A_Index
            x := bagStartX + (col - 1) * bagOffsetX
            testCount++

            ; 計算搜尋區域 (縮小範圍避免重疊,只搜尋格子中心 ±15 像素)
            searchX1 := x - 15
            searchY1 := y - 15
            searchX2 := x + 15
            searchY2 := y + 15

            ; 測試每個 BMP 圖片 (嘗試多個容錯度)
            foundInSlot := false
            For index, bmpPath in bmpFiles {
                SplitPath, bmpPath, fileName, , , fileNameNoExt

                ; 先嘗試容錯度 50
                ImageSearch, imgX, imgY, %searchX1%, %searchY1%, %searchX2%, %searchY2%, *50 %bmpPath%
                tolerance := 50

                ; 如果失敗,嘗試容錯度 100
                if (ErrorLevel) {
                    ImageSearch, imgX, imgY, %searchX1%, %searchY1%, %searchX2%, %searchY2%, *100 %bmpPath%
                    tolerance := 100
                }

                ; 如果失敗,嘗試容錯度 150
                if (ErrorLevel) {
                    ImageSearch, imgX, imgY, %searchX1%, %searchY1%, %searchX2%, %searchY2%, *150 %bmpPath%
                    tolerance := 150
                }

                if (!ErrorLevel) {
                    ; 檢查找到的位置是否在當前格子中心附近 (±12 像素內)
                    distX := Abs(imgX - x)
                    distY := Abs(imgY - y)

                    if (distX <= 12 && distY <= 12) {
                        price := bmpPrices[fileNameNoExt]
                        priceText := (price != "") ? " | 價格: " . price : " | ❌ 無價格設定"
                        foundItems.Push("位置[" . row . "," . col . "] 座標(" . x . "," . y . ") 找到於(" . imgX . "," . imgY . ") → " . fileNameNoExt . priceText . " | 容錯度:" . tolerance)

                        ; 在找到的物品上顯示標記
                        ToolTip, ✅ %fileNameNoExt% (容錯:%tolerance%), imgX, imgY
                        Sleep, 500
                        foundInSlot := true
                        Break
                    }
                }
            }

            ; 記錄前 3 個測試格子的除錯資訊
            if (testCount <= 3) {
                debugInfo.Push("格子[" . row . "," . col . "] 中心(" . x . "," . y . ") 搜尋區域(" . searchX1 . "," . searchY1 . ")-(" . searchX2 . "," . searchY2 . ") " . (foundInSlot ? "✅找到" : "❌未找到"))
            }

            testIndex++
        }
    }

    ToolTip

    ; 顯示測試結果
    Gui, TestResult:New, +AlwaysOnTop +ToolWindow
    Gui, TestResult:Color, 2d2d44
    Gui, TestResult:Font, s11 bold cFFFFFF, Microsoft JhengHei
    Gui, TestResult:Add, Text, x10 y10 w480 h35 Center, 📊 測試結果

    Gui, TestResult:Font, s10 norm c00ff88, Microsoft JhengHei
    foundCount := foundItems.MaxIndex()
    if (foundCount = "")
        foundCount := 0
    Gui, TestResult:Add, Text, x20 y55, 找到 %foundCount% 個符合的物品:

    if (foundCount > 0) {
        resultText := ""
        For index, item in foundItems {
            resultText .= item . "`n"
        }
        Gui, TestResult:Font, s9 norm cadd8e6, Microsoft JhengHei
        Gui, TestResult:Add, Edit, x20 y85 w460 h250 ReadOnly, %resultText%
    } else {
        Gui, TestResult:Font, s9 norm cff6b6b, Microsoft JhengHei
        Gui, TestResult:Add, Text, x20 y85 w460 h100, ❌ 未找到任何符合的物品!`n`n可能原因:`n1. BMP 圖片與遊戲中的物品不符`n2. 背包座標設定不正確 (按 F9 調整)`n3. 圖片容錯度需要調整 (目前 *50)
    }

    ; 診斷資訊
    Gui, TestResult:Font, s8 norm c7f8c8d, Microsoft JhengHei
    Gui, TestResult:Add, Text, x20 y350, 診斷資訊:
    Gui, TestResult:Add, Text, x20 y368, 背包起始座標: (%bagStartX%, %bagStartY%) | 間距: (%bagOffsetX%, %bagOffsetY%)
    Gui, TestResult:Add, Text, x20 y386, 背包大小: %bagRows% 行 x %bagCols% 列 = %totalSlots% 格
    bmpCountResult := bmpFiles.MaxIndex()
    if (bmpCountResult = "")
        bmpCountResult := 0
    Gui, TestResult:Add, Text, x20 y404, 已載入 BMP 圖片: %bmpCountResult% 個 | 測試容錯度: 50/100/150

    ; 顯示前 3 個格子的搜尋詳情
    debugCount := debugInfo.MaxIndex()
    if (debugCount != "" && debugCount > 0) {
        Gui, TestResult:Font, s8 norm cffa500, Microsoft JhengHei
        Gui, TestResult:Add, Text, x20 y422, 前 3 個格子搜尋詳情:
        debugText := ""
        For index, info in debugInfo {
            debugText .= info . "`n"
        }
        Gui, TestResult:Font, s7 norm cadd8e6, Consolas
        Gui, TestResult:Add, Edit, x20 y440 w460 h80 ReadOnly, %debugText%
    }

    ; 按鈕
    Gui, TestResult:Font, s10 bold c000000, Microsoft JhengHei
    Gui, TestResult:Add, Button, x190 y540 w120 h40 gCloseTestResult, 確定

    Gui, TestImage:Destroy
    Gui, TestResult:Show, w500 h600, 測試結果
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

TestNPCImages:
    Gui, TestImage:Hide
    UpdateStatusText("🔍 FindText 文字碼測試中...")

    global npcOffsetX, npcOffsetY
    global Text_倉庫NPC, Text_倉庫已開啟, Text_販售NPC, Text_販售管理商店對話窗
    global Text_販售管理商店已開啟, Text_Sell視窗, Text_SellOK, Text_Bag

    ; 先激活遊戲視窗
    WinGet, poeWinID, ID, ahk_class POEWindowClass
    if (poeWinID) {
        WinActivate, ahk_id %poeWinID%
        Sleep, 300  ; 等待視窗激活
        UpdateStatusText("🎮 遊戲視窗已激活，開始測試...")
        Sleep, 200
    } else {
        MsgBox, 48, 警告, 未找到遊戲視窗！`n`n請確保遊戲正在運行。
        UpdateStatusText("⚠️  未找到遊戲視窗")
        Return
    }

    ; 定義要測試的 FindText 文字碼
    textTests := []
    textTests.Push({name: "倉庫NPC", textCode: Text_倉庫NPC, desc: "倉庫 NPC (自動點擊用)", optional: true, hasOffset: true})
    textTests.Push({name: "倉庫已開啟", textCode: Text_倉庫已開啟, desc: "倉庫已開啟介面", optional: false, hasOffset: false})
    textTests.Push({name: "販售NPC", textCode: Text_販售NPC, desc: "販售 NPC (自動點擊用)", optional: true, hasOffset: true})
    textTests.Push({name: "販售管理商店對話窗", textCode: Text_販售管理商店對話窗, desc: "管理商店對話窗", optional: false, hasOffset: false})
    textTests.Push({name: "販售管理商店已開啟", textCode: Text_販售管理商店已開啟, desc: "管理商店已開啟", optional: false, hasOffset: false})
    textTests.Push({name: "Sell視窗", textCode: Text_Sell視窗, desc: "上架視窗特徵", optional: false, hasOffset: false})
    textTests.Push({name: "SellOK", textCode: Text_SellOK, desc: "上架確認按鈕", optional: false, hasOffset: false})
    textTests.Push({name: "Bag", textCode: Text_Bag, desc: "背包特徵", optional: false, hasOffset: false})

    ; 取得遊戲視窗範圍
    gameWin := GetGameWindowRect()

    testResults := "📋 FindText 文字碼檢測結果`n`n"
    testResults .= "遊戲視窗: (" . gameWin.x . "," . gameWin.y . ") 大小: " . gameWin.w . "x" . gameWin.h . "`n"
    testResults .= "容錯度: 階梯式 (0 → 0.05 → 0.1) | 偏移量: X+" . npcOffsetX . " Y+" . npcOffsetY . "`n`n"

    foundCount := 0
    notFoundCount := 0
    missingCount := 0

    ; 測試每個文字碼
    For index, test in textTests {
        if (test.textCode = "") {
            ; 文字碼未填入
            missingCount++
            if (test.optional) {
                testResults .= "⏭️  " . test.name . "`n"
                testResults .= "   " . test.desc . "`n"
                testResults .= "   狀態: 選用文字碼，未填入 (可手動操作)`n`n"
            } else {
                testResults .= "⚠️  " . test.name . "`n"
                testResults .= "   " . test.desc . "`n"
                testResults .= "   狀態: 必要文字碼缺失！`n"
                testResults .= "   建議: 使用 F8 開啟 FindText GUI 截取並生成`n`n"
            }
        } else {
            ; 使用 FindImage_Tiered 測試
            if (test.hasOffset) {
                result := FindNPC(test.textCode, npcOffsetX, npcOffsetY, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
            } else {
                result := FindUI(test.textCode, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
            }

            if (result.found) {
                ; 找到圖像
                foundCount++

                ; 格式化容錯度顯示
                toleranceText := (result.tolerance = 0) ? "0 (精確)" : (result.tolerance = 0.05) ? "0.05 (中等)" : "0.1 (寬鬆)"

                if (test.hasOffset) {
                    testResults .= "✅ " . test.name . "`n"
                    testResults .= "   " . test.desc . "`n"
                    testResults .= "   容錯度: " . toleranceText . "`n"
                    testResults .= "   找到: (" . result.x . "," . result.y . ") → 點擊: (" . result.clickX . "," . result.clickY . ")`n`n"

                    ; 在螢幕上標記找到的位置
                    ShowMarker(result.x - result.width//2, result.y - result.height//2, result.width, result.height, "FF0000", 2000)
                    ; 標記點擊位置
                    ShowMarker(result.clickX - 15, result.clickY - 15, 30, 30, "00FF00", 2000)
                } else {
                    testResults .= "✅ " . test.name . "`n"
                    testResults .= "   " . test.desc . "`n"
                    testResults .= "   容錯度: " . toleranceText . "`n"
                    testResults .= "   找到: (" . result.x . "," . result.y . ")`n`n"

                    ; 在螢幕上標記找到的位置
                    ShowMarker(result.x - result.width//2, result.y - result.height//2, result.width, result.height, "00FF00", 2000)
                }
            } else {
                ; 未找到圖像
                notFoundCount++
                testResults .= "❌ " . test.name . "`n"
                testResults .= "   " . test.desc . "`n"
                testResults .= "   狀態: 文字碼已填入但無法識別 (已測試 0/0.05/0.1)`n"
                testResults .= "   建議: 重新使用 F8 截取並生成文字碼`n`n"
            }
        }

        Sleep, 100  ; 短暫延遲
    }

    ; 統計
    totalTests := textTests.MaxIndex()
    testResults .= "━━━━━━━━━━━━━━━━━━━━━━━━`n"
    testResults .= "統計: 總共 " . totalTests . " 個文字碼`n"
    testResults .= "✅ 找到: " . foundCount . " | ❌ 未找到: " . notFoundCount . " | ⚠️  缺失: " . missingCount . "`n"

    ; 顯示結果
    MsgBox, 64, FindText 文字碼測試結果, %testResults%

    Gui, TestImage:Destroy
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

; 螢幕標記函數 - 顯示找到的位置
ShowMarker(x, y, w, h, color, duration) {
    static markerCount := 0
    markerCount++
    markerName := "Marker" . markerCount

    Gui, %markerName%:New, +LastFound +AlwaysOnTop +ToolWindow -Caption +E0x20
    Gui, %markerName%:Color, %color%
    Gui, %markerName%:Show, x%x% y%y% w%w% h%h% NA
    WinSet, Transparent, 120

    ; 設定定時器刪除標記
    markerTimer := Func("DestroyMarker").Bind(markerName)
    SetTimer, %markerTimer%, -%duration%
}

; 刪除標記
DestroyMarker(markerName) {
    Gui, %markerName%:Destroy
}

    ; 測試倉庫-已開啟.bmp
    IfExist, %stashOpenedBmp%
    {
        ImageSearch, x, y, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h, *150 %stashOpenedBmp%
        if (!ErrorLevel) {
            testResults .= "✅ 倉庫-已開啟.bmp: 找到於 (" . x . "," . y . ")`n"
        } else {
            testResults .= "❌ 倉庫-已開啟.bmp: 未找到`n"
        }
    } else {
        testResults .= "⚠️ 倉庫-已開啟.bmp: 檔案不存在`n"
    }

    ; 測試離線商城-開啟中.bmp
    IfExist, %shopOpeningBmp%
    {
        ImageSearch, x, y, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h, *150 %shopOpeningBmp%
        if (!ErrorLevel) {
            testResults .= "✅ 離線商城-開啟中.bmp: 找到於 (" . x . "," . y . ")`n"
        } else {
            testResults .= "❌ 離線商城-開啟中.bmp: 未找到`n"
        }
    } else {
        testResults .= "⚠️ 離線商城-開啟中.bmp: 檔案不存在`n"
    }

    ; 測試離線商城-管理.bmp
    IfExist, %shopManageBmp%
    {
        ImageSearch, x, y, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h, *150 %shopManageBmp%
        if (!ErrorLevel) {
            testResults .= "✅ 離線商城-管理.bmp: 找到於 (" . x . "," . y . ")`n"
        } else {
            testResults .= "❌ 離線商城-管理.bmp: 未找到`n"
        }
    } else {
        testResults .= "⚠️ 離線商城-管理.bmp: 檔案不存在`n"
    }

    testResults .= "`n💡 提示:`n"
    testResults .= "- ✅ = 圖片已找到,可以使用`n"
    testResults .= "- ❌ = 圖片未找到,請重新截取或確認畫面`n"
    testResults .= "- ⚠️ = 圖片檔案不存在,請使用 F8 截取`n"

    MsgBox, 64, NPC 圖片測試結果, %testResults%

    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

CloseImageTest:
    Gui, TestImage:Destroy
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

;------------------------------
; F10 完整自動化說明
ShowF10Help() {
    helpText := "
    (
🤖 F10 完整自動化功能說明
═══════════════════════════════════════════════

【功能概述】
F10 整合了倉庫取物、NPC 互動、商店上架的完整流程，
實現一鍵自動化操作。

【執行流程】
┌─────────────────────────────────────────┐
│ 階段 1: 尋找倉庫 NPC                      │
│  → 自動偵測並點擊倉庫 NPC                 │
│  → 等待倉庫介面開啟 (5秒倒數)            │
│  → 如未開啟則重新點擊                    │
├─────────────────────────────────────────┤
│ 階段 2: 掃描倉庫並取出物品                │
│  → 掃描 12x12 共 144 格倉庫              │
│  → 使用剪貼簿模式 (Ctrl+C) 識別物品      │
│  → 自動取出有價格設定的物品 (Ctrl+點擊)  │
│  → 最多取出 60 個物品                    │
├─────────────────────────────────────────┤
│ 階段 3: 尋找販售 NPC                      │
│  → 關閉倉庫                              │
│  → 自動偵測並點擊販售 NPC                │
│  → 等待對話窗出現 (5秒倒數)              │
├─────────────────────────────────────────┤
│ 階段 4: 點擊管理商店選項                  │
│  → 偵測對話窗並點擊「管理商店」選項      │
│  → 使用獨立的對話窗偏移量                │
│  → 等待管理商店開啟 (5秒倒數)            │
│  → 如未開啟則重新點擊選項                │
├─────────────────────────────────────────┤
│ 階段 5: 等待背包出現                      │
│  → 確認管理商店和背包都已開啟            │
│  → 自動啟動 F6 上架功能                  │
└─────────────────────────────────────────┘

【使用前準備】
1. ✅ 填入所有 FindText 文字碼
   - 按 F8 截取 8 個圖片生成文字碼
   - 填入 FindText文字碼庫.ahk
   - 按 F7 測試所有文字碼

2. ✅ 設定物品價格
   - 編輯 sell\prices.ini
   - 格式: 物品名稱=價格
   - 物品名稱必須與遊戲內 Ctrl+C 複製的名稱一致

3. ✅ 調整偏移量 (如需要)
   - 按 F9 開啟座標設定
   - NPC 偏移: 調整 NPC 點擊位置
   - 對話窗偏移: 調整選項點擊位置

【操作步驟】
1. 站在倉庫 NPC 附近
2. 按 F10 啟動自動化
3. 觀察狀態訊息，確認流程執行
4. 如需停止，再按 F10

【故障排除】
❓ 找不到 NPC？
  → 檢查 NPC 文字碼是否填入
  → 靠近 NPC 讓 NPC 顯示在畫面中
  → 按 F7 測試 NPC 識別

❓ 物品沒有被取出？
  → 檢查 prices.ini 物品名稱是否正確
  → 按 Ctrl+C 複製物品，貼到記事本查看名稱
  → 確保名稱完全一致 (包括空格)

❓ 點擊位置不對？
  → 按 F9 調整偏移量
  → NPC 偏移: 用於階段 1, 3 (NPC 點擊)
  → 對話窗偏移: 用於階段 4 (選項點擊)

❓ 5秒後重新點擊？
  → 這是正常的重試機制
  → 如果介面未開啟，會自動重新點擊
  → 檢查偏移量是否正確

【熱鍵】
F10:    啟動/停止自動化
F7:     測試文字碼識別
F8:     開啟 FindText 截圖工具
F9:     調整偏移量座標
F11:    重新啟動程式
Insert: 開啟驗證碼工具

【詳細文件】
FindText使用指南.txt - FindText 截圖教學
優化更新說明.txt     - 技術細節說明

═══════════════════════════════════════════════
    )"

    MsgBox, 64, F10 完整自動化使用說明, %helpText%
}
Return

CloseTestResult:
    Gui, TestResult:Destroy
Return

TestImageGuiClose:
TestImageGuiEscape:
    Gui, TestImage:Destroy
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

TestResultGuiClose:
TestResultGuiEscape:
    Gui, TestResult:Destroy
Return

;------------------------------
; FindText GUI 工具 (F8) - 啟動 FindText 抓圖工具
OpenFindTextGUI() {
    ; 啟動 FindText GUI
    FindText().Gui("Show")
    UpdateStatusText("🎨 FindText GUI 已開啟 | 請截取圖片並生成文字碼")
}

;------------------------------
; BMP 截圖工具 (F8) - 已棄用，改用 FindText
ShowBMPCapture() {
    global bmpFolder

    Gui, BMPCapture:New, +AlwaysOnTop +ToolWindow
    Gui, BMPCapture:Color, 2d2d44
    Gui, BMPCapture:Font, s11 bold cFFFFFF, Microsoft JhengHei
    Gui, BMPCapture:Add, Text, x10 y10 w360 h35 Center, 📸 BMP 截圖工具

    Gui, BMPCapture:Font, s9 norm cDDDDDD, Microsoft JhengHei
    Gui, BMPCapture:Add, Text, x20 y55, 請按照以下步驟操作:

    Gui, BMPCapture:Font, s9 norm cadd8e6
    Gui, BMPCapture:Add, Text, x20 y80, 1. 點擊「開始截圖」按鈕
    Gui, BMPCapture:Add, Text, x20 y100, 2. 螢幕會變暗並顯示覆蓋層
    Gui, BMPCapture:Add, Text, x20 y120, 3. 按住滑鼠左鍵拖拉選擇區域
    Gui, BMPCapture:Add, Text, x20 y140, 4. 放開滑鼠完成選擇
    Gui, BMPCapture:Add, Text, x20 y160, 5. 輸入檔案名稱並儲存

    Gui, BMPCapture:Font, s8 italic cff9f43
    Gui, BMPCapture:Add, Text, x20 y185, 💡 提示: 拖拉選擇截圖區域,建議 30x30 ~ 50x50 像素

    Gui, BMPCapture:Font, s8 italic cff6b6b
    Gui, BMPCapture:Add, Text, x20 y205, ⚠️ 截圖後請記得在 prices.ini 設定價格!

    ; 按鈕
    Gui, BMPCapture:Font, s10 bold c000000, Microsoft JhengHei
    Gui, BMPCapture:Add, Button, x80 y240 w100 h40 gStartBMPCapture, 開始截圖
    Gui, BMPCapture:Add, Button, x200 y240 w100 h40 gCloseBMPCapture, 取消

    Gui, BMPCapture:Show, w380 h300, BMP 截圖工具
}

StartBMPCapture:
    Gui, BMPCapture:Hide
    UpdateStatusText("📸 拖拉選擇截圖區域 | Esc 取消")

    ; 創建全螢幕半透明覆蓋層
    Gui, ScreenOverlay:New, +LastFound +AlwaysOnTop +ToolWindow -Caption +E0x20
    Gui, ScreenOverlay:Color, 000000
    WinSet, Transparent, 100
    Gui, ScreenOverlay:Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, ScreenOverlay

    ; 創建選擇框 GUI (用於顯示拖拉的矩形)
    Gui, SelectBox:New, +LastFound +AlwaysOnTop +ToolWindow -Caption +E0x20
    Gui, SelectBox:Color, 00FF00
    WinSet, Transparent, 150

    ; 設定臨時熱鍵
    Hotkey, LButton, StartDrag, On
    Hotkey, Esc, CancelCapture, On

    ; 初始化全域變數
    global isDragging := false
    global dragStartX := 0
    global dragStartY := 0
    global dragEndX := 0
    global dragEndY := 0

    ; 啟動滑鼠追蹤 Timer
    SetTimer, TrackMouse, 10
Return

StartDrag:
    global isDragging, dragStartX, dragStartY
    if (!isDragging) {
        MouseGetPos, dragStartX, dragStartY
        isDragging := true
        SetTimer, UpdateSelectBox, 10
    }
Return

UpdateSelectBox:
    global isDragging, dragStartX, dragStartY, dragEndX, dragEndY
    if (isDragging) {
        ; 檢查滑鼠左鍵是否仍按住
        GetKeyState, state, LButton, P
        if (state = "U") {
            ; 滑鼠放開,完成選擇
            isDragging := false
            SetTimer, UpdateSelectBox, Off
            SetTimer, TrackMouse, Off
            Hotkey, LButton, Off
            Hotkey, Esc, Off
            Gui, ScreenOverlay:Destroy
            Gui, SelectBox:Destroy
            GoSub, CaptureBMP
            Return
        }

        ; 獲取當前滑鼠位置
        MouseGetPos, dragEndX, dragEndY

        ; 計算矩形座標 (確保正值)
        x := (dragStartX < dragEndX) ? dragStartX : dragEndX
        y := (dragStartY < dragEndY) ? dragStartY : dragEndY
        w := Abs(dragEndX - dragStartX)
        h := Abs(dragEndY - dragStartY)

        ; 顯示選擇框
        if (w > 2 && h > 2) {
            Gui, SelectBox:Show, x%x% y%y% w%w% h%h% NA
        }
    }
Return

TrackMouse:
    ; 顯示當前滑鼠位置提示
    global isDragging
    if (!isDragging) {
        MouseGetPos, mx, my
        ToolTip, 按住滑鼠左鍵拖拉選擇區域`n按 Esc 取消, mx + 20, my + 20
    }
Return

CaptureBMP:
    ; 清理資源
    ToolTip
    SetTimer, TrackMouse, Off
    SetTimer, UpdateSelectBox, Off
    Hotkey, LButton, Off
    Hotkey, Esc, Off

    global dragStartX, dragStartY, dragEndX, dragEndY, bmpFolder

    ; 計算截圖區域
    captureX := (dragStartX < dragEndX) ? dragStartX : dragEndX
    captureY := (dragStartY < dragEndY) ? dragStartY : dragEndY
    captureW := Abs(dragEndX - dragStartX)
    captureH := Abs(dragEndY - dragStartY)

    ; 檢查區域大小
    if (captureW < 5 || captureH < 5) {
        Gui, ScreenOverlay:Destroy
        Gui, SelectBox:Destroy
        Gui, BMPCapture:Destroy
        UpdateStatusText("❌ 截圖已取消: 選擇區域太小")
        MsgBox, 48, 區域太小, 選擇的區域太小！`n`n最小尺寸: 5x5 像素`n當前尺寸: %captureW%x%captureH% 像素
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        Return
    }

    ; 先詢問儲存類型
    global npcFolder, sellFolder
    MsgBox, 3, 選擇儲存類型, 截圖區域: %captureW% x %captureH% 像素`n`n請選擇儲存類型:`n`n【是】= NPC 圖片 (F10自動化: npc資料夾)`n【否】= 上架視窗 (F6上架: sell資料夾)`n【取消】= 物品圖片 (舊功能: bmp資料夾)

    IfMsgBox Yes
    {
        ; NPC 圖片 - 提供快速選項
        saveFolder := npcFolder
        MsgBox, 4, NPC 類型, 請選擇 NPC 類型:`n`n【是】= 倉庫相關 NPC`n【否】= 販售相關 NPC

        IfMsgBox Yes
        {
            ; 倉庫 NPC
            MsgBox, 4, 倉庫 NPC, 請選擇倉庫 NPC 圖片類型:`n`n【是】= 倉庫NPC.bmp (用於自動點擊)`n【否】= 其他 (手動輸入檔名)

            IfMsgBox Yes
                fileName := "倉庫NPC"
            Else
            {
                ; 只有倉庫-已開啟
                fileName := "倉庫-已開啟"
            }
        }
        Else
        {
            ; 販售 NPC
            MsgBox, 4, 販售 NPC, 請選擇販售 NPC 圖片類型:`n`n【是】= 販售NPC.bmp (用於自動點擊)`n【否】= 其他 (手動輸入檔名)

            IfMsgBox Yes
                fileName := "販售NPC"
            Else
            {
                ; 提供其他販售相關選項
                MsgBox, 4, 商城狀態, 請選擇:`n`n【是】= 販售-管理商店-對話窗.bmp`n【否】= 販售-管理商店-已開啟.bmp

                IfMsgBox Yes
                    fileName := "販售-管理商店-對話窗"
                Else
                    fileName := "販售-管理商店-已開啟"
            }
        }

        ; 確認是否要使用預設檔名
        if (fileName != "") {
            MsgBox, 4, 確認檔名, 將儲存為: %fileName%.bmp`n`n是否使用此檔名？`n`n【是】= 使用此檔名`n【否】= 手動輸入檔名
            IfMsgBox No
                fileName := ""
        }

        ; 如果沒有選擇預設檔名，手動輸入
        if (fileName = "") {
            InputBox, fileName, 儲存 NPC 圖片, 請輸入檔案名稱 (不含副檔名):`n`n截圖區域: %captureW% x %captureH% 像素`n建議: 倉庫NPC、販售NPC、倉庫-開啟中、倉庫-已開啟等, , 400, 220
        }
    }
    Else IfMsgBox No
    {
        ; 上架視窗圖片 - 儲存到 sell 資料夾
        saveFolder := sellFolder
        MsgBox, 4, 上架視窗圖片, 請選擇上架視窗圖片類型:`n`n【是】= sell.bmp (上架視窗特徵)`n【否】= 其他類型

        IfMsgBox Yes
            fileName := "sell"
        Else
        {
            ; 選擇其他類型
            MsgBox, 4, 其他類型, 請選擇:`n`n【是】= sell-ok.bmp (確認按鈕)`n【否】= bag.bmp (背包特徵)

            IfMsgBox Yes
                fileName := "sell-ok"
            Else
                fileName := "bag"
        }

        ; 確認檔名
        if (fileName != "") {
            MsgBox, 4, 確認檔名, 將儲存為: %fileName%.bmp`n`n是否使用此檔名？`n`n【是】= 使用此檔名`n【否】= 手動輸入檔名
            IfMsgBox No
                fileName := ""
        }

        ; 如果沒有選擇預設檔名，手動輸入
        if (fileName = "") {
            InputBox, fileName, 儲存上架視窗圖片, 請輸入檔案名稱 (不含副檔名):`n`n截圖區域: %captureW% x %captureH% 像素`n建議: sell、sell-ok、bag, , 400, 200
        }
    }
    Else
    {
        ; 物品圖片 - 儲存到 bmp 資料夾
        saveFolder := bmpFolder
        InputBox, fileName, 儲存物品圖片, 請輸入檔案名稱 (不含副檔名):`n`n截圖區域: %captureW% x %captureH% 像素`n範例: 混沌石、崇高石、神聖石, , 380, 200
    }

    if (ErrorLevel = 0 and fileName != "") {
        ; 確保目標資料夾存在
        IfNotExist, %saveFolder%
            FileCreateDir, %saveFolder%

        ; 確保檔名安全
        fileName := RegExReplace(fileName, "[\\/:*?""<>|]", "_")
        savePath := saveFolder . "\" . fileName . ".bmp"

        ; 截取選擇的區域
        result := CaptureScreenRegion(captureX, captureY, captureW, captureH, savePath)

        if (result) {
            ; 驗證文件確實存在
            if (FileExist(savePath)) {
                FileGetSize, fileSize, %savePath%
                ; 判斷資料夾類型
                if (saveFolder = npcFolder)
                    folderName := "npc"
                else if (saveFolder = sellFolder)
                    folderName := "sell"
                else
                    folderName := "bmp"

                UpdateStatusText("✅ 截圖已儲存: " . fileName . ".bmp (" . captureW . "x" . captureH . "px, " . fileSize . " bytes) → " . folderName)

                ; 根據儲存類型顯示不同提示
                if (saveFolder = npcFolder) {
                    MsgBox, 64, 截圖成功, 檔案已儲存至:`n%savePath%`n`n區域: %captureW% x %captureH% 像素`n文件大小: %fileSize% bytes`n`n✅ NPC 圖片已就緒！`n準備好 6 張圖片後可使用 F10 完整自動化。
                } else if (saveFolder = sellFolder) {
                    MsgBox, 64, 截圖成功, 檔案已儲存至:`n%savePath%`n`n區域: %captureW% x %captureH% 像素`n文件大小: %fileSize% bytes`n`n✅ 上架視窗圖片已就緒！`n準備好 3 張圖片 (sell/sell-ok/bag) 後可使用 F6 上架功能。
                } else {
                    MsgBox, 64, 截圖成功, 檔案已儲存至:`n%savePath%`n`n區域: %captureW% x %captureH% 像素`n文件大小: %fileSize% bytes`n`n請記得在 prices.ini 設定價格！
                }
            } else {
                UpdateStatusText("❌ 截圖失敗: 文件未創建")
                MsgBox, 16, 截圖失敗, 文件保存失敗,請檢查:`n1. bmp 資料夾權限`n2. 磁碟空間`n3. 路徑: %savePath%
            }
        } else {
            UpdateStatusText("❌ 截圖失敗: API 調用錯誤")
            MsgBox, 16, 截圖失敗, 截圖 API 調用失敗!`n`n可能原因:`n1. 螢幕區域超出範圍`n2. 系統資源不足`n3. 權限問題
        }
    } else {
        UpdateStatusText("❌ 截圖已取消")
    }

    Gui, ScreenOverlay:Destroy
    Gui, SelectBox:Destroy
    Gui, BMPCapture:Destroy
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

; 截取螢幕區域函數 (簡化版)
CaptureScreenRegion(x, y, w, h, outputFile) {
    ; 獲取螢幕 DC
    hDC := DllCall("GetDC", "Ptr", 0, "Ptr")
    hCDC := DllCall("CreateCompatibleDC", "Ptr", hDC, "Ptr")
    hBM := DllCall("CreateCompatibleBitmap", "Ptr", hDC, "Int", w, "Int", h, "Ptr")

    if (!hDC || !hCDC || !hBM) {
        if (hCDC)
            DllCall("DeleteDC", "Ptr", hCDC)
        if (hDC)
            DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)
        return false
    }

    DllCall("SelectObject", "Ptr", hCDC, "Ptr", hBM)

    ; 複製螢幕內容
    DllCall("BitBlt", "Ptr", hCDC, "Int", 0, "Int", 0, "Int", w, "Int", h
        , "Ptr", hDC, "Int", x, "Int", y, "UInt", 0x00CC0020)

    ; 獲取位圖信息
    VarSetCapacity(DIBSECTION, 84, 0)
    DllCall("GetObject", "Ptr", hBM, "Int", 84, "Ptr", &DIBSECTION)

    width := NumGet(DIBSECTION, 4, "Int")
    height := NumGet(DIBSECTION, 8, "Int")
    bpp := NumGet(DIBSECTION, 18, "UShort")

    ; 計算行大小 (必須是4的倍數)
    stride := ((width * bpp + 31) // 32) * 4
    imageSize := stride * height

    ; 獲取像素數據
    VarSetCapacity(bits, imageSize, 0)
    VarSetCapacity(bi, 40, 0)
    NumPut(40, bi, 0, "UInt")           ; biSize
    NumPut(width, bi, 4, "Int")         ; biWidth
    NumPut(-height, bi, 8, "Int")       ; biHeight (負值表示從上到下)
    NumPut(1, bi, 12, "UShort")         ; biPlanes
    NumPut(24, bi, 14, "UShort")        ; biBitCount (24位色彩)
    NumPut(0, bi, 16, "UInt")           ; biCompression

    DllCall("GetDIBits", "Ptr", hDC, "Ptr", hBM, "UInt", 0, "UInt", height
        , "Ptr", &bits, "Ptr", &bi, "UInt", 0)

    ; 重新計算實際的 stride (24位)
    stride := ((width * 24 + 31) // 32) * 4
    imageSize := stride * height

    ; 構建 BMP 文件頭
    fileSize := 54 + imageSize
    VarSetCapacity(header, 54, 0)

    ; BITMAPFILEHEADER (14 bytes)
    NumPut(0x4D42, header, 0, "UShort")     ; bfType "BM"
    NumPut(fileSize, header, 2, "UInt")     ; bfSize
    NumPut(0, header, 6, "UInt")            ; bfReserved
    NumPut(54, header, 10, "UInt")          ; bfOffBits

    ; BITMAPINFOHEADER (40 bytes)
    NumPut(40, header, 14, "UInt")          ; biSize
    NumPut(width, header, 18, "Int")        ; biWidth
    NumPut(height, header, 22, "Int")       ; biHeight
    NumPut(1, header, 26, "UShort")         ; biPlanes
    NumPut(24, header, 28, "UShort")        ; biBitCount
    NumPut(0, header, 30, "UInt")           ; biCompression
    NumPut(imageSize, header, 34, "UInt")   ; biSizeImage
    NumPut(0, header, 38, "Int")            ; biXPelsPerMeter
    NumPut(0, header, 42, "Int")            ; biYPelsPerMeter
    NumPut(0, header, 46, "UInt")           ; biClrUsed
    NumPut(0, header, 50, "UInt")           ; biClrImportant

    ; 寫入文件
    hFile := FileOpen(outputFile, "w")
    if (!hFile) {
        DllCall("DeleteObject", "Ptr", hBM)
        DllCall("DeleteDC", "Ptr", hCDC)
        DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)
        return false
    }

    hFile.RawWrite(header, 54)
    hFile.RawWrite(bits, imageSize)
    hFile.Close()

    ; 清理資源
    DllCall("DeleteObject", "Ptr", hBM)
    DllCall("DeleteDC", "Ptr", hCDC)
    DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)

    return FileExist(outputFile) ? true : false
}

CancelCapture:
    ; 清理所有資源
    ToolTip
    SetTimer, TrackMouse, Off
    SetTimer, UpdateSelectBox, Off
    Hotkey, LButton, Off
    Hotkey, Esc, Off
    Gui, ScreenOverlay:Destroy
    Gui, SelectBox:Destroy
    Gui, BMPCapture:Destroy
    UpdateStatusText("❌ 截圖已取消")
    Sleep, 1500
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
Return

CloseBMPCapture:
BMPCaptureGuiClose:
BMPCaptureGuiEscape:
    Gui, BMPCapture:Destroy
Return

;------------------------------
;------------------------------
; 價格管理視窗 (Ctrl+F6)
OpenPriceManager() {
    global bmpFolder, bmpPrices, PriceListView, EditItemName, EditItemPrice

    ; 重新載入價格
    LoadPrices()

    ; 創建視窗
    Gui, PriceManager:New, +AlwaysOnTop +Resize
    Gui, PriceManager:Color, 2d2d44
    Gui, PriceManager:Font, s11 bold cFFFFFF, Microsoft JhengHei

    ; 標題
    Gui, PriceManager:Add, Text, x20 y15 w500, 💰 價格管理 - prices.ini

    ; 說明文字
    Gui, PriceManager:Font, s9 normal cDDDDDD
    Gui, PriceManager:Add, Text, x20 y45 w500, 物品名稱必須與遊戲內 Ctrl+C 複製的名稱完全一致 (支援中英文)

    ; 價格列表
    Gui, PriceManager:Font, s10 normal cFFFFFF
    Gui, PriceManager:Add, Text, x20 y75, 📋 現有價格設定:

    ; ListView 顯示價格列表
    Gui, PriceManager:Font, s9 normal c000000
    Gui, PriceManager:Add, ListView, x20 y100 w560 h300 vPriceListView gPriceListClick, 序號|物品名稱|價格

    ; 填充 ListView
    itemIndex := 1
    for itemName, price in bmpPrices {
        LV_Add("", itemIndex, itemName, price)
        itemIndex++
    }

    ; 調整欄寬
    LV_ModifyCol(1, 60)   ; 序號
    LV_ModifyCol(2, 320)  ; 物品名稱
    LV_ModifyCol(3, 150)  ; 價格

    ; 新增/編輯區域
    Gui, PriceManager:Font, s10 bold cFFFFFF
    Gui, PriceManager:Add, Text, x20 y420, ✏️ 新增/編輯價格:

    Gui, PriceManager:Font, s9 normal cDDDDDD
    Gui, PriceManager:Add, Text, x20 y450, 物品名稱:
    Gui, PriceManager:Font, s9 normal c000000
    Gui, PriceManager:Add, Edit, x110 y448 w320 vEditItemName

    Gui, PriceManager:Font, s9 normal cDDDDDD
    Gui, PriceManager:Add, Text, x20 y485, 價格:
    Gui, PriceManager:Font, s9 normal c000000
    Gui, PriceManager:Add, Edit, x110 y483 w150 vEditItemPrice

    ; 按鈕區域
    Gui, PriceManager:Font, s10 bold c000000, Microsoft JhengHei
    Gui, PriceManager:Add, Button, x20 y530 w120 h40 gAddPrice, ➕ 新增
    Gui, PriceManager:Add, Button, x150 y530 w120 h40 gUpdatePrice, 💾 更新
    Gui, PriceManager:Add, Button, x280 y530 w120 h40 gDeletePrice, 🗑️ 刪除
    Gui, PriceManager:Add, Button, x410 y530 w120 h40 gClearInputs, 🔄 清空

    ; 底部按鈕
    Gui, PriceManager:Font, s10 bold c000000
    Gui, PriceManager:Add, Button, x20 y590 w150 h45 gSavePrices, 💾 保存到檔案
    Gui, PriceManager:Add, Button, x180 y590 w150 h45 gReloadPrices, 🔄 重新載入
    Gui, PriceManager:Add, Button, x340 y590 w150 h45 gOpenPricesIni, 📝 開啟 INI
    Gui, PriceManager:Add, Button, x500 y590 w80 h45 gClosePriceManager, 關閉

    ; 顯示視窗
    Gui, PriceManager:Show, w600 h660, 價格管理器
    Return
}

; ListView 點擊事件 - 填充到編輯框
PriceListClick:
    if (A_GuiEvent = "DoubleClick") {
        selectedRow := LV_GetNext(0)
        if (selectedRow) {
            LV_GetText(itemName, selectedRow, 2)
            LV_GetText(price, selectedRow, 3)
            GuiControl, PriceManager:, EditItemName, %itemName%
            GuiControl, PriceManager:, EditItemPrice, %price%
        }
    }
Return

; 新增價格
AddPrice:
    global bmpPrices, EditItemName, EditItemPrice
    Gui, PriceManager:Submit, NoHide

    if (EditItemName = "" || EditItemPrice = "") {
        MsgBox, 48, 提示, 請輸入物品名稱和價格!
        Return
    }

    ; 檢查是否已存在
    if (bmpPrices.HasKey(EditItemName)) {
        MsgBox, 36, 確認, 物品「%EditItemName%」已存在!`n`n是否要更新價格?
        IfMsgBox, Yes
            Goto, UpdatePrice
        Return
    }

    ; 新增到字典
    bmpPrices[EditItemName] := EditItemPrice

    ; 新增到 ListView
    LV_Add("", LV_GetCount() + 1, EditItemName, EditItemPrice)

    ; 清空輸入框
    GuiControl, PriceManager:, EditItemName,
    GuiControl, PriceManager:, EditItemPrice,

    MsgBox, 64, 成功, 已新增物品「%EditItemName%」價格: %EditItemPrice%`n`n記得點擊「保存到檔案」!
Return

; 更新價格
UpdatePrice:
    global bmpPrices, EditItemName, EditItemPrice
    Gui, PriceManager:Submit, NoHide

    if (EditItemName = "" || EditItemPrice = "") {
        MsgBox, 48, 提示, 請輸入物品名稱和價格!
        Return
    }

    ; 更新字典
    bmpPrices[EditItemName] := EditItemPrice

    ; 更新 ListView
    foundRow := 0
    Loop, % LV_GetCount() {
        LV_GetText(existingName, A_Index, 2)
        if (existingName = EditItemName) {
            foundRow := A_Index
            Break
        }
    }

    if (foundRow) {
        LV_Modify(foundRow, "", foundRow, EditItemName, EditItemPrice)
        MsgBox, 64, 成功, 已更新物品「%EditItemName%」價格: %EditItemPrice%`n`n記得點擊「保存到檔案」!
    } else {
        ; 如果不存在就新增
        LV_Add("", LV_GetCount() + 1, EditItemName, EditItemPrice)
        MsgBox, 64, 成功, 已新增物品「%EditItemName%」價格: %EditItemPrice%`n`n記得點擊「保存到檔案」!
    }

    ; 清空輸入框
    GuiControl, PriceManager:, EditItemName,
    GuiControl, PriceManager:, EditItemPrice,
Return

; 刪除價格
DeletePrice:
    selectedRow := LV_GetNext(0)
    if (!selectedRow) {
        MsgBox, 48, 提示, 請先在列表中選擇要刪除的項目!
        Return
    }

    LV_GetText(itemName, selectedRow, 2)
    LV_GetText(price, selectedRow, 3)

    MsgBox, 36, 確認刪除, 確定要刪除以下項目嗎？`n`n物品: %itemName%`n價格: %price%
    IfMsgBox, No
        Return

    global bmpPrices

    ; 從字典中刪除
    bmpPrices.Delete(itemName)

    ; 從 ListView 刪除
    LV_Delete(selectedRow)

    ; 重新編號
    Loop, % LV_GetCount() {
        LV_Modify(A_Index, "", A_Index)
    }

    MsgBox, 64, 成功, 已刪除物品「%itemName%」!`n`n記得點擊「保存到檔案」!
Return

; 清空輸入框
ClearInputs:
    GuiControl, PriceManager:, EditItemName,
    GuiControl, PriceManager:, EditItemPrice,
Return

; 保存價格到檔案
SavePrices:
    global bmpFolder, bmpPrices
    pricesFile := bmpFolder . "\prices.ini"

    ; 備份舊檔案
    backupFile := bmpFolder . "\prices.ini.backup"
    FileCopy, %pricesFile%, %backupFile%, 1

    ; 刪除舊檔案
    FileDelete, %pricesFile%

    ; 寫入檔案頭 (UTF-8 with BOM)
    FileAppend,
    (
`; ===================================================================
`; 物品名稱與價格對照表 (剪貼簿模式)
`; ===================================================================
`;
`; 格式說明:
`; 物品名稱=價格
`;
`; 重要提示:
`; 1. 物品名稱必須與遊戲內 Ctrl+C 複製的名稱完全一致
`; 2. 物品名稱會自動從 ---- 分隔線上方提取
`; 3. 支援中文名稱 (例如: 熾熱之邀=80)
`; 4. 價格可以是整數或小數 (例如: 1, 150, 0.5)
`; 5. 分號 `; 開頭的行會被忽略
`; 6. 空行會被忽略
`; 7. 本檔案使用 UTF-8 編碼,支援中文
`;
`; 如何設定:
`; 1. 在遊戲中將滑鼠移到物品上
`; 2. 按 Ctrl+C 複製物品資訊
`; 3. 貼到記事本查看物品名稱 (第一個 ---- 上方的文字)
`; 4. 在下方新增: 物品名稱=價格
`;
`; 範例:
`; 混沌石=1
`; 崇高石=150
`; 神聖石=80
`; 點金石=50
`; 改造石=0.1
`; 重鑄石=0.2
`; 後悔石=2
`; 熾熱之邀=80
`; 17 級地圖=40
`;
`; ===================================================================
`; 請在下方新增你的物品價格設定:
`; ===================================================================

    ), %pricesFile%, UTF-8

    ; 寫入價格資料
    for itemName, price in bmpPrices {
        FileAppend, %itemName%=%price%`n, %pricesFile%, UTF-8
    }

    itemCount := LV_GetCount()
    MsgBox, 64, 保存成功, 價格設定已保存到:`n%pricesFile%`n`n共保存 %itemCount% 個項目!`n`n舊檔案已備份為: prices.ini.backup
Return

; 重新載入價格
ReloadPrices:
    MsgBox, 36, 確認, 確定要重新載入檔案？`n`n未保存的修改將會遺失!
    IfMsgBox, No
        Return

    ; 重新載入
    LoadPrices()

    ; 清空 ListView
    LV_Delete()

    ; 重新填充
    global bmpPrices
    itemIndex := 1
    for itemName, price in bmpPrices {
        LV_Add("", itemIndex, itemName, price)
        itemIndex++
    }

    itemCount := LV_GetCount()
    MsgBox, 64, 成功, 已重新載入價格設定!`n`n共載入 %itemCount% 個項目!
Return

; 開啟 prices.ini
OpenPricesIni:
    global bmpFolder
    pricesFile := bmpFolder . "\prices.ini"

    IfNotExist, %pricesFile%
    {
        MsgBox, 48, 檔案不存在, prices.ini 不存在!`n`n將自動建立範例檔案。
        LoadPrices()
    }

    Run, notepad.exe "%pricesFile%"
Return

; 關閉視窗
ClosePriceManager:
PriceManagerGuiClose:
PriceManagerGuiEscape:
    Gui, PriceManager:Destroy
Return

;------------------------------
; 座標設定 GUI (F9)
ShowCoordSettings() {
    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols
    global searchX1, searchY1, searchX2, searchY2
    global npcOffsetX, npcOffsetY, dialogOffsetX, dialogOffsetY

    Gui, CoordSettings:New, +AlwaysOnTop +ToolWindow
    Gui, CoordSettings:Color, 2d2d44
    Gui, CoordSettings:Font, s10 cFFFFFF, Microsoft JhengHei

    ; NPC 點擊偏移設定
    Gui, CoordSettings:Add, GroupBox, x10 y10 w360 h90, NPC 點擊偏移設定 (倉庫/販售 NPC)
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y35, 偏移 X:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y33 w80 vNewNpcOffsetX, %npcOffsetX%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y35, 偏移 Y:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y33 w80 vNewNpcOffsetY, %npcOffsetY%

    Gui, CoordSettings:Font, s8 italic cAAAAAAA
    Gui, CoordSettings:Add, Text, x20 y65, 說明: 調整 NPC 識別後的點擊位置偏移量 (按 F7 查看紅框→綠框)

    ; 對話窗點擊偏移設定
    Gui, CoordSettings:Font, s10 cFFFFFF
    Gui, CoordSettings:Add, GroupBox, x10 y110 w360 h90, 對話窗點擊偏移設定 (管理商店選項)
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y135, 偏移 X:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y133 w80 vNewDialogOffsetX, %dialogOffsetX%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y135, 偏移 Y:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y133 w80 vNewDialogOffsetY, %dialogOffsetY%

    Gui, CoordSettings:Font, s8 italic cAAAAAAA
    Gui, CoordSettings:Add, Text, x20 y165, 說明: 調整對話窗選項的點擊偏移（獨立於 NPC 偏移）

    ; 背包座標設定
    Gui, CoordSettings:Font, s10 cFFFFFF
    Gui, CoordSettings:Add, GroupBox, x10 y210 w360 h160, 背包座標設定
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y235, 起始 X:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y233 w80 vNewBagStartX, %bagStartX%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y235, 起始 Y:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y233 w80 vNewBagStartY, %bagStartY%

    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y265, 間距 X:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y263 w80 vNewBagOffsetX, %bagOffsetX%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y265, 間距 Y:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y263 w80 vNewBagOffsetY, %bagOffsetY%

    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y295, 行數:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y293 w80 vNewBagRows, %bagRows%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y295, 列數:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y293 w80 vNewBagCols, %bagCols%

    Gui, CoordSettings:Font, s8 italic cAAAAAAA
    Gui, CoordSettings:Add, Text, x20 y325, 說明: 調整背包物品的起始座標、間距和格數

    ; 搜尋區域設定
    Gui, CoordSettings:Font, s10 cFFFFFF
    Gui, CoordSettings:Add, GroupBox, x10 y380 w360 h120, 取倉搜尋區域設定
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y405, X1:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y403 w80 vNewSearchX1, %searchX1%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y405, Y1:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y403 w80 vNewSearchY1, %searchY1%

    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x20 y435, X2:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x100 y433 w80 vNewSearchX2, %searchX2%
    Gui, CoordSettings:Font, s9 cDDDDDD
    Gui, CoordSettings:Add, Text, x200 y435, Y2:
    Gui, CoordSettings:Font, s9 c000000
    Gui, CoordSettings:Add, Edit, x280 y433 w80 vNewSearchY2, %searchY2%

    Gui, CoordSettings:Font, s8 italic cAAAAAAA
    Gui, CoordSettings:Add, Text, x20 y465, 說明: 定義像素搜尋的矩形區域範圍

    ; 按鈕
    Gui, CoordSettings:Font, s10 bold c000000, Microsoft JhengHei
    Gui, CoordSettings:Add, Button, x100 y520 w80 h35 gSaveCoordSettings, 儲存
    Gui, CoordSettings:Add, Button, x200 y520 w80 h35 gCancelCoordSettings, 取消

    Gui, CoordSettings:Show, w380 h575, 座標設定
}

SaveCoordSettings:
    global bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols
    global searchX1, searchY1, searchX2, searchY2
    global npcOffsetX, npcOffsetY, dialogOffsetX, dialogOffsetY
    Gui, CoordSettings:Submit, NoHide

    ; NPC 偏移量
    npcOffsetX := NewNpcOffsetX
    npcOffsetY := NewNpcOffsetY

    ; 對話窗偏移量
    dialogOffsetX := NewDialogOffsetX
    dialogOffsetY := NewDialogOffsetY

    ; 背包座標
    bagStartX := NewBagStartX
    bagStartY := NewBagStartY
    bagOffsetX := NewBagOffsetX
    bagOffsetY := NewBagOffsetY
    bagRows := NewBagRows
    bagCols := NewBagCols

    ; 搜尋區域
    searchX1 := NewSearchX1
    searchY1 := NewSearchY1
    searchX2 := NewSearchX2
    searchY2 := NewSearchY2

    Gui, CoordSettings:Destroy

    ; 顯示儲存的值
    MsgBox, 64, 座標設定已儲存,
    (
✅ 座標設定已儲存成功！

NPC 點擊偏移 (倉庫/販售):
  偏移 X: %npcOffsetX%
  偏移 Y: %npcOffsetY%

對話窗點擊偏移 (管理商店選項):
  偏移 X: %dialogOffsetX%
  偏移 Y: %dialogOffsetY%

背包座標:
  起始: (%bagStartX%, %bagStartY%)
  間距: (%bagOffsetX%, %bagOffsetY%)
  格數: %bagRows% 行 x %bagCols% 列

💡 提示: 按 F7 測試 NPC 識別，觀察紅框和綠框位置
    )
Return

CancelCoordSettings:
    Gui, CoordSettings:Destroy
Return

CoordSettingsGuiClose:
CoordSettingsGuiEscape:
    Gui, CoordSettings:Destroy
Return

;------------------------------
;------------------------------
; F10 - 完整自動化功能
ToggleFullAuto() {
    global autoRunning, autoStage, activeFunction
    global npcFolder, stashOpeningBmp, stashOpenedBmp, shopOpeningBmp, shopManageBmp

    if (autoRunning) {
        ; 停止自動化
        autoRunning := false
        autoStage := 0
        SetTimer, ProcessFullAuto, Off
        StopAllFunctions()
        UpdateStatusText("⏹️ 完整自動化已停止")
        Sleep, 1500
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
    } else {
        ; 載入 NPC 圖片
        stashNpcBmp := npcFolder . "\倉庫NPC.bmp"
        stashOpenedBmp := npcFolder . "\倉庫-已開啟.bmp"
        shopNpcBmp := npcFolder . "\販售NPC.bmp"
        shopDialogBmp := npcFolder . "\販售-管理商店-對話窗.bmp"
        shopManageBmp := npcFolder . "\販售-管理商店-已開啟.bmp"

        ; 檢查必要圖片是否存在
        IfNotExist, %stashOpenedBmp%
        {
            MsgBox, 48, 警告, 未找到「倉庫-已開啟.bmp」！`n`n請將倉庫完全開啟後的截圖放入 npc 資料夾。`n`n路徑: %npcFolder%`n`n請參考 npc\README.txt 說明。
            Return
        }
        IfNotExist, %shopDialogBmp%
        {
            MsgBox, 48, 警告, 未找到「販售-管理商店-對話窗.bmp」！`n`n請將販售 NPC 對話窗的截圖放入 npc 資料夾。`n`n路徑: %npcFolder%`n`n請參考 npc\README.txt 說明。
            Return
        }
        IfNotExist, %shopManageBmp%
        {
            MsgBox, 48, 警告, 未找到「販售-管理商店-已開啟.bmp」！`n`n請將管理商店已開啟介面的截圖放入 npc 資料夾。`n`n路徑: %npcFolder%`n`n請參考 npc\README.txt 說明。
            Return
        }

        ; 載入價格設定
        LoadPrices()

        ; 啟動自動化
        if (activeFunction != "")
            StopAllFunctions()
        autoRunning := true
        autoStage := 1  ; 階段 1: 等待倉庫開啟
        npcClickRetries := 0  ; 重置倉庫 NPC 重試計數
        shopClickRetries := 0  ; 重置販售 NPC 重試計數
        stashScanIndex := 1  ; 重置倉庫掃描索引
        stashFoundCount := 0  ; 重置找到的物品數量
        activeFunction := "FullAuto"
        UpdateStatusText("🤖 完整自動化啟動！`n`n請點擊倉庫 NPC... | 再按 F10 停止")
        SetTimer, ProcessFullAuto, 200
    }
}

ProcessFullAuto:
    global autoRunning, autoStage
    global stashOpeningBmp, stashOpenedBmp, shopOpeningBmp, shopManageBmp, bagBmp
    global bmpPrices, bagStartX, bagStartY, bagOffsetX, bagOffsetY, bagRows, bagCols
    global sellBmp, sellOkBmp, sellFolder

    if (!autoRunning) {
        SetTimer, ProcessFullAuto, Off
        Return
    }

    ; 取得遊戲視窗範圍
    gameWin := GetGameWindowRect()

    ; 階段 1: 尋找並點擊倉庫 NPC
    if (autoStage = 1) {
        global npcClickRetries, npcOffsetX, npcOffsetY, lastNpcClickTime, npcClickWaitTime
        global Text_倉庫NPC, Text_倉庫已開啟

        ; 先檢測倉庫是否已經開啟 (使用 FindText)
        uiResult := FindUI(Text_倉庫已開啟, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
        if (uiResult.found) {
            UpdateStatusText("🤖 自動化 [1/6] 倉庫已開啟,開始掃描... | F10 停止")
            npcClickRetries := 0
            lastNpcClickTime := 0
            autoStage := 2  ; 直接進入階段 2 (掃描倉庫)
            Sleep, 500
            Return
        }

        ; 檢查是否正在等待上次點擊的結果
        if (lastNpcClickTime > 0) {
            elapsedTime := A_TickCount - lastNpcClickTime

            ; 如果等待時間未超過 5 秒，繼續等待
            if (elapsedTime < npcClickWaitTime) {
                remainingTime := Ceil((npcClickWaitTime - elapsedTime) / 1000)
                UpdateStatusText("🤖 自動化 [1/6] 等待倉庫開啟... 剩餘 " . remainingTime . " 秒 | F10 停止")
                Return
            }

            ; 超過 5 秒仍未開啟，準備重新尋找並點擊
            UpdateStatusText("🤖 自動化 [1/6] 倉庫未開啟，重新偵測 NPC 座標... | F10 停止")
            lastNpcClickTime := 0
            RandomSleep(200, 400)  ; 短暫延遲後重試
        }

        ; 每次循環都重新偵測倉庫 NPC (使用 FindText)
        if (Text_倉庫NPC != "")
        {
            ; 激活遊戲視窗確保偵測準確
            WinGet, poeWinID, ID, ahk_class POEWindowClass
            if (poeWinID) {
                WinActivate, ahk_id %poeWinID%
                Sleep, 50  ; 短暫等待
            }

            ; 重新偵測 NPC 座標
            npcResult := FindNPC(Text_倉庫NPC, npcOffsetX, npcOffsetY, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)

            if (npcResult.found) {
                ; 找到倉庫 NPC,使用返回的點擊座標
                toleranceText := (npcResult.tolerance = 0) ? "精確" : (npcResult.tolerance = 0.05) ? "*50" : "*100"
                UpdateStatusText("🤖 自動化 [1/6] 偵測到倉庫 NPC (" . toleranceText . ") 於 (" . npcResult.clickX . "," . npcResult.clickY . ")，點擊... | F10 停止")
                RandomSleep(100, 250)  ; 模擬人類反應時間
                HumanMouseMove(npcResult.clickX, npcResult.clickY, 2)  ; 使用人類化鼠標移動
                RandomSleep(50, 150)
                MouseClick, left, npcResult.clickX, npcResult.clickY, 1, 0
                RandomSleep(300, 500)  ; 等待 NPC 回應

                ; 記錄點擊時間，開始 5 秒倒數
                lastNpcClickTime := A_TickCount
                npcClickRetries := 0
                Return
            }
        }

        ; 如果找不到 NPC 或沒有 NPC 文字碼，提示手動點擊
        if (npcClickRetries < 100) {  ; 20 秒超時 (100 * 200ms)
            npcClickRetries++
            if (Text_倉庫NPC = "")
                UpdateStatusText("🤖 自動化 [1/6] 等待手動點擊倉庫 NPC... (" . npcClickRetries . "/100) | F10 停止")
            else
                UpdateStatusText("🤖 自動化 [1/6] 尋找倉庫 NPC... (" . npcClickRetries . "/100) | 請靠近 NPC | F10 停止")
        } else {
            UpdateStatusText("⚠️ 超時: 未找到倉庫 NPC，請手動點擊倉庫或重新按 F10")
            npcClickRetries := 0
            lastNpcClickTime := 0
        }
        Return
    }

    ; 階段 2: 掃描倉庫並取出物品
    if (autoStage = 2) {
        global stashScanIndex, stashFoundCount, bmpPrices

        ; 倉庫掃描邏輯 (使用剪貼簿模式)
        totalSlots := 144  ; 12x12 倉庫格子

        if (stashScanIndex = 1) {
            stashFoundCount := 0
        }

        if (stashScanIndex > totalSlots || stashFoundCount >= 60) {
            ; 掃描完成或已找到 60 個物品，關閉倉庫
            UpdateStatusText("🤖 自動化 [2/6] 已取出 " . stashFoundCount . " 個物品，正在關閉倉庫... | F10 停止")
            Send, {Esc}  ; 關閉倉庫
            RandomSleep(300, 500)  ; 等待倉庫關閉
            stashScanIndex := 1  ; 重置
            shopClickRetries := 0  ; 重置販售 NPC 計數
            autoStage := 3  ; 進入階段 3: 尋找販售 NPC
            UpdateStatusText("🤖 自動化 [3/6] 倉庫已關閉，尋找販售 NPC... | F10 停止")
            Return
        }

        ; 計算當前倉庫格子座標 (倉庫為 12x12)
        ; 倉庫第一格中心座標: (30, 115) 實測值
        stashStartX := 30  ; 倉庫第一格中心 X
        stashStartY := 115  ; 倉庫第一格中心 Y
        stashOffsetX := 30  ; 格子間距 X
        stashOffsetY := 30  ; 格子間距 Y
        stashCols := 12  ; 倉庫列數

        row := Floor((stashScanIndex - 1) / stashCols) + 1
        col := Mod(stashScanIndex - 1, stashCols) + 1
        x := stashStartX + (col - 1) * stashOffsetX
        y := stashStartY + (row - 1) * stashOffsetY

        ; 移動滑鼠並複製物品資訊 (加入隨機延遲)
        MouseMove, %x%, %y%, 0
        RandomSleep(80, 150)  ; 隨機延遲 80-150ms
        Clipboard := ""
        Send, ^c
        ClipWait, 0.2

        if (!ErrorLevel) {
            ; 解析物品名稱
            itemName := GetItemNameFromClipboard()
            if (itemName != "") {
                ; 檢查是否有價格設定
                price := bmpPrices[itemName]
                if (price != "") {
                    ; 有價格,取出物品 (Ctrl+左鍵) - 人性化操作
                    RandomSleep(80, 150)
                    Send, {Ctrl Down}
                    RandomSleep(30, 70)  ; Ctrl 按住後的自然延遲
                    Click, %x%, %y%
                    RandomSleep(40, 80)  ; 點擊後的短暫延遲
                    Send, {Ctrl Up}
                    stashFoundCount++
                    UpdateStatusText("🤖 自動化 [2/6] 掃描中... " . stashScanIndex . "/" . totalSlots . " | 已找到: " . stashFoundCount . "/60 | " . itemName . " (價格:" . price . ")")
                    RandomSleep(150, 250)  ; 取出物品後隨機延遲,增加變化
                } else {
                    ; 有物品但無價格設定，跳過
                    UpdateStatusText("🤖 自動化 [2/6] 掃描中... " . stashScanIndex . "/" . totalSlots . " | 跳過: " . itemName . " (無價格設定)")
                }
            } else {
                ; 空格子或無法識別
                UpdateStatusText("🤖 自動化 [2/6] 掃描中... " . stashScanIndex . "/" . totalSlots . " | 空格或無法識別")
            }
        } else {
            ; 複製失敗
            UpdateStatusText("🤖 自動化 [2/6] 掃描中... " . stashScanIndex . "/" . totalSlots . " | 複製失敗")
        }

        stashScanIndex++
        Return
    }

    ; 階段 3: 尋找並點擊販售 NPC
    if (autoStage = 3) {
        global shopClickRetries, npcOffsetX, npcOffsetY, lastShopClickTime, npcClickWaitTime
        global Text_販售NPC, Text_販售管理商店對話窗

        ; 先檢測對話窗是否已出現 (使用 FindText)
        dialogResult := FindUI(Text_販售管理商店對話窗, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
        if (dialogResult.found) {
            UpdateStatusText("🤖 自動化 [4/6] 對話窗已出現，等待管理商店開啟... | F10 停止")
            shopClickRetries := 0
            lastShopClickTime := 0
            autoStage := 4  ; 進入階段 4
            Return
        }

        ; 檢查是否正在等待上次點擊的結果
        if (lastShopClickTime > 0) {
            elapsedTime := A_TickCount - lastShopClickTime

            ; 如果等待時間未超過 5 秒，繼續等待
            if (elapsedTime < npcClickWaitTime) {
                remainingTime := Ceil((npcClickWaitTime - elapsedTime) / 1000)
                UpdateStatusText("🤖 自動化 [3/6] 等待對話窗開啟... 剩餘 " . remainingTime . " 秒 | F10 停止")
                Return
            }

            ; 超過 5 秒仍未開啟，準備重新尋找並點擊
            UpdateStatusText("🤖 自動化 [3/6] 對話窗未出現，重新偵測 NPC 座標... | F10 停止")
            lastShopClickTime := 0
            RandomSleep(200, 400)  ; 短暫延遲後重試
        }

        ; 每次循環都重新偵測販售 NPC (使用 FindText)
        if (Text_販售NPC != "")
        {
            ; 激活遊戲視窗確保偵測準確
            WinGet, poeWinID, ID, ahk_class POEWindowClass
            if (poeWinID) {
                WinActivate, ahk_id %poeWinID%
                Sleep, 50  ; 短暫等待
            }

            ; 重新偵測 NPC 座標
            npcResult := FindNPC(Text_販售NPC, npcOffsetX, npcOffsetY, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)

            if (npcResult.found) {
                ; 找到販售 NPC，使用返回的點擊座標
                toleranceText := (npcResult.tolerance = 0) ? "精確" : (npcResult.tolerance = 0.05) ? "*50" : "*100"
                UpdateStatusText("🤖 自動化 [3/6] 偵測到販售 NPC (" . toleranceText . ") 於 (" . npcResult.clickX . "," . npcResult.clickY . ")，點擊... | F10 停止")
                RandomSleep(100, 250)  ; 模擬人類反應時間
                HumanMouseMove(npcResult.clickX, npcResult.clickY, 2)  ; 使用人類化鼠標移動
                RandomSleep(50, 150)
                MouseClick, left, npcResult.clickX, npcResult.clickY, 1, 0
                RandomSleep(300, 500)  ; 等待 NPC 回應

                ; 記錄點擊時間，開始 5 秒倒數
                lastShopClickTime := A_TickCount
                shopClickRetries := 0
                Return
            }
        }

        ; 如果找不到 NPC 或沒有 NPC 文字碼，提示手動點擊
        if (shopClickRetries < 100) {  ; 20 秒超時
            shopClickRetries++
            if (Text_販售NPC = "")
                UpdateStatusText("🤖 自動化 [3/6] 等待手動點擊販售 NPC... (" . shopClickRetries . "/100) | F10 停止")
            else
                UpdateStatusText("🤖 自動化 [3/6] 尋找販售 NPC... (" . shopClickRetries . "/100) | 請靠近 NPC | F10 停止")
        } else {
            UpdateStatusText("⚠️ 超時: 未找到販售 NPC，請手動點擊或重新按 F10")
            shopClickRetries := 0
            lastShopClickTime := 0
        }
        Return
    }

    ; 階段 4: 偵測並點擊對話窗選項
    if (autoStage = 4) {
        global Text_販售管理商店對話窗, Text_販售管理商店已開啟
        global dialogOffsetX, dialogOffsetY, lastDialogClickTime, dialogClickRetries

        ; 先檢查管理商店是否已開啟
        shopResult := FindUI(Text_販售管理商店已開啟, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
        if (shopResult.found) {
            UpdateStatusText("🤖 自動化 [5/6] 管理商店已開啟，等待背包... | F10 停止")
            lastDialogClickTime := 0
            dialogClickRetries := 0
            autoStage := 6  ; 跳到階段 6
            Sleep, 500
            Return
        }

        ; 檢查是否正在等待上次點擊的結果
        if (lastDialogClickTime > 0) {
            elapsedTime := A_TickCount - lastDialogClickTime

            ; 如果等待時間未超過 5 秒，繼續等待
            if (elapsedTime < 5000) {
                remainingTime := Ceil((5000 - elapsedTime) / 1000)
                UpdateStatusText("🤖 自動化 [4/6] 等待管理商店開啟... 剩餘 " . remainingTime . " 秒 | F10 停止")
                Return
            }

            ; 超過 5 秒仍未開啟，準備重新點擊
            UpdateStatusText("🤖 自動化 [4/6] 管理商店未開啟，重新偵測對話窗... | F10 停止")
            lastDialogClickTime := 0
            dialogClickRetries++
            RandomSleep(200, 400)  ; 短暫延遲後重試
        }

        ; 偵測對話窗並點擊
        dialogResult := FindUI(Text_販售管理商店對話窗, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
        if (dialogResult.found) {
            ; 找到對話窗，計算點擊座標（使用獨立的對話窗偏移量）
            clickX := dialogResult.x + dialogOffsetX
            clickY := dialogResult.y + dialogOffsetY

            toleranceText := (dialogResult.tolerance = 0) ? "精確" : (dialogResult.tolerance = 0.05) ? "*50" : "*100"
            UpdateStatusText("🤖 自動化 [4/6] 偵測到對話窗 (" . toleranceText . ") 於 (" . clickX . "," . clickY . ")，點擊... | F10 停止")

            RandomSleep(100, 250)
            HumanMouseMove(clickX, clickY, 2)
            RandomSleep(50, 150)
            MouseClick, left, clickX, clickY, 1, 0
            RandomSleep(300, 500)

            ; 記錄點擊時間，開始 5 秒倒數
            lastDialogClickTime := A_TickCount
            Return
        }

        ; 找不到對話窗
        if (dialogClickRetries < 50) {  ; 10 秒超時 (50 * 200ms)
            UpdateStatusText("🤖 自動化 [4/6] 尋找對話窗... (" . dialogClickRetries . "/50) | F10 停止")
        } else {
            UpdateStatusText("⚠️ 超時: 未找到對話窗，請檢查是否已顯示對話選項")
            dialogClickRetries := 0
            lastDialogClickTime := 0
        }
        Return
    }

    ; 階段 5: (已合併到階段 4)
    ; 保留空白以避免錯誤
    if (autoStage = 5) {
        autoStage := 6
        Return
    }

    ; 階段 6: 等待背包出現並開始上架
    if (autoStage = 6) {
        global Text_Bag

        bagResult := FindUI(Text_Bag, gameWin.x, gameWin.y, gameWin.x + gameWin.w, gameWin.y + gameWin.h)
        if (bagResult.found) {
            UpdateStatusText("🤖 自動化 [6/6] 背包已出現，開始自動上架... | F10 停止")
            SetTimer, ProcessFullAuto, Off  ; 停止此 Timer
            autoStage := 7

            ; 啟動 F6 上架功能
            Sleep, 500
            ToggleOfflineShop()  ; 呼叫 F6 上架
        }
        Return
    }

Return

; 重新啟動腳本 (F11)
ReloadScript() {
    Reload
}

; ===================================================================
; POE 驗證碼工具 - AHK + FindText 實作
; ===================================================================

; 載入驗證碼帳號設定
LoadVerificationAccount() {
    global verificationUserIni, verificationAccount

    ; 先嘗試從 user.ini 讀取帳號模式
    IniRead, accountMode, %verificationUserIni%, Account, mode, direct

    ; 模式 1: 直接從 user.ini 讀取 (direct)
    if (accountMode = "direct") {
        IfNotExist, %verificationUserIni%
        {
            MsgBox, 48, 錯誤, 找不到 user.ini 配置檔！`n`n路徑: %verificationUserIni%`n`n請確認檔案存在。
            Return false
        }

        IniRead, account, %verificationUserIni%, Account, username, ERROR
        if (account = "ERROR" || account = "") {
            MsgBox, 48, 錯誤, 無法讀取帳號！`n`n請檢查 user.ini 中的 [Account] username 設定。
            Return false
        }

        verificationAccount := account
        Return true
    }

    ; 模式 2: 從 IOT 目錄讀取 (iot)
    else if (accountMode = "iot") {
        ; 讀取 setnb.ini 中的 nob 值
        setnbPath := "C:\IOT\setnb.ini"
        IfNotExist, %setnbPath%
        {
            MsgBox, 48, 錯誤, 找不到 setnb.ini！`n`n路徑: %setnbPath%`n`n請確認檔案存在。
            Return false
        }

        ; 直接讀取 nob 參數
        IniRead, nob, %setnbPath%, OutputVar, nob, ERROR
        if (nob = "ERROR" || nob = "") {
            MsgBox, 48, 錯誤, 無法讀取 setnb.ini 中的 nob 值！`n`n請檢查 [OutputVar] nob 設定。
            Return false
        }

        ; 讀取 list.txt 的第 nob 行
        listPath := "C:\IOT\list.txt"
        IfNotExist, %listPath%
        {
            MsgBox, 48, 錯誤, 找不到 list.txt！`n`n路徑: %listPath%`n`n請確認檔案存在。
            Return false
        }

        FileReadLine, accountLine, %listPath%, %nob%
        if (ErrorLevel) {
            MsgBox, 48, 錯誤, 無法讀取 list.txt 第 %nob% 行！`n`n請檢查檔案內容。
            Return false
        }

        ; 解析 list.txt 行,提取帳號 (第10個欄位,k79281346 或 partylin 或 dbkpuawv660@outlook.com)
        StringSplit, listParts, accountLine, `,
        if (listParts0 < 10) {
            MsgBox, 48, 錯誤, list.txt 第 %nob% 行格式錯誤！`n`n無法解析帳號。
            Return false
        }

        account := listParts10  ; 第10個欄位是帳號

        ; 移除前後空白
        account := Trim(account)

        if (account = "") {
            MsgBox, 48, 錯誤, list.txt 第 %nob% 行帳號為空！
            Return false
        }

        verificationAccount := account
        Return true
    }

    ; 模式未知
    else {
        MsgBox, 48, 錯誤, 未知的帳號模式: %accountMode%`n`n請在 user.ini 中設定 mode = direct 或 mode = iot
        Return false
    }
}

; 從 API 取得驗證碼
FetchVerificationCode() {
    global verificationApiUrl, verificationApiToken, verificationAccount, verificationCode

    ; 檢查帳號
    if (verificationAccount = "") {
        if (!LoadVerificationAccount()) {
            Return false
        }
    }

    ; 建立 HTTP 請求
    try {
        http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        url := verificationApiUrl . "?token=" . verificationApiToken . "&account=" . verificationAccount

        ; 發送請求
        http.Open("GET", url, false)
        http.SetRequestHeader("User-Agent", "POE-Verification-Tool/1.0")
        http.Send()

        ; 等待回應
        http.WaitForResponse(10)

        ; 檢查狀態碼
        statusCode := http.Status
        if (statusCode != 200) {
            MsgBox, 48, API 錯誤, API 請求失敗！`n`n狀態碼: %statusCode%`n`n請檢查網路連線或 API 伺服器狀態。
            Return false
        }

        ; 取得回應內容
        responseText := http.ResponseText

        ; 使用正則表達式提取驗證碼 (格式: xxx-xxx-xxx)
        ; 尋找 "access code" 後面的驗證碼,避免匹配到日期
        if RegExMatch(responseText, "access code[^:]*:\s*([a-z0-9]+-[a-z0-9]+-[a-z0-9]+)", match) {
            verificationCode := match1  ; match1 是第一個捕獲組
            Return true
        } else {
            MsgBox, 48, 解析錯誤, 無法從郵件中提取驗證碼！`n`n請確認郵件已送達,或聯繫管理員。`n`n回應內容:`n%responseText%
            Return false
        }
    } catch e {
        MsgBox, 48, 網路錯誤, HTTP 請求失敗！`n`n錯誤訊息: %e%`n`n請檢查網路連線。
        Return false
    }
}

; 自動輸入驗證碼
AutoInputVerificationCode(countdown := 3) {
    global verificationCode

    if (verificationCode = "") {
        MsgBox, 48, 錯誤, 尚未取得驗證碼！`n`n請先點擊「取得驗證碼」。
        Return
    }

    ; 倒數提示
    Loop, %countdown% {
        remaining := countdown - A_Index + 1
        UpdateStatusText("🔑 驗證碼自動輸入倒數... " . remaining . " 秒")
        Sleep, 1000
    }

    ; 使用貼上功能輸入 (避免中文輸入法干擾)
    UpdateStatusText("📋 貼上驗證碼: " . verificationCode)
    Clipboard := verificationCode
    Sleep, 50
    Send, ^v

    UpdateStatusText("✅ 驗證碼已輸入: " . verificationCode)
    Sleep, 2000
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
}

; 開啟驗證碼工具 GUI (Insert)
OpenVerificationCodeTool() {
    ShowVerificationGUI()
}

; 顯示驗證碼工具 GUI
ShowVerificationGUI() {
    global verificationAccount, verificationCode

    ; 載入帳號
    LoadVerificationAccount()

    ; 建立 GUI
    Gui, Verification:New, , POE 驗證碼工具
    Gui, Verification:+AlwaysOnTop -MinimizeBox
    Gui, Verification:Margin, 20, 20
    Gui, Verification:Color, 1a1a2e

    ; 標題
    Gui, Verification:Font, s14 bold cFFFFFF, Microsoft JhengHei
    Gui, Verification:Add, Text, x20 y20 w460 Center, 🔑 POE 驗證碼自動取得工具

    ; 帳號資訊區
    Gui, Verification:Add, Progress, x20 y60 w460 h90 Background2d3250 Disabled

    Gui, Verification:Font, s10 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y75, 當前帳號: (可直接修改)
    Gui, Verification:Font, s10 bold cBlack, Microsoft JhengHei
    Gui, Verification:Add, Edit, x35 y100 w410 h28 vVerificationAccountInput BackgroundWhite, %verificationAccount%

    ; 驗證碼顯示區
    Gui, Verification:Add, Progress, x20 y165 w460 h120 Background2d3250 Disabled

    Gui, Verification:Font, s10 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y180, 驗證碼:

    Gui, Verification:Font, s16 bold cFFFFFF, Consolas
    Gui, Verification:Add, Edit, x35 y205 w410 h35 Center ReadOnly vVerificationCodeDisplay BackgroundBlack c00ff88, %verificationCode%

    ; 按鈕區
    Gui, Verification:Font, s10 norm cFFFFFF, Microsoft JhengHei
    Gui, Verification:Add, Button, x35 y255 w130 h40 gFetchCodeButton, 📥 取得驗證碼
    Gui, Verification:Add, Button, x175 y255 w130 h40 gCopyCodeButton, 📋 複製到剪貼簿
    Gui, Verification:Add, Button, x315 y255 w130 h40 gAutoInputButton, ⌨️ 自動輸入(3秒)

    ; 自動監控區域
    Gui, Verification:Add, Progress, x20 y315 w460 h210 Background2d3250 Disabled

    Gui, Verification:Font, s11 bold cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y330, 🔍 自動監控設定

    Gui, Verification:Font, s9 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y360, 輸入框 X:
    Gui, Verification:Font, s9 norm cBlack, Microsoft JhengHei
    Gui, Verification:Add, Edit, x110 y358 w70 h22 vVerificationClickXInput BackgroundWhite, %verificationClickX%

    Gui, Verification:Font, s9 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x200 y360, Y:
    Gui, Verification:Font, s9 norm cBlack, Microsoft JhengHei
    Gui, Verification:Add, Edit, x220 y358 w70 h22 vVerificationClickYInput BackgroundWhite, %verificationClickY%

    Gui, Verification:Font, s8 italic c7f8c8d, Microsoft JhengHei
    Gui, Verification:Add, Text, x310 y360 w150, (點擊後輸入驗證碼)

    Gui, Verification:Font, s9 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y390, 送出按鈕 X:
    Gui, Verification:Font, s9 norm cBlack, Microsoft JhengHei
    Gui, Verification:Add, Edit, x125 y388 w70 h22 vVerificationSubmitXInput BackgroundWhite, %verificationSubmitX%

    Gui, Verification:Font, s9 norm cadd8e6, Microsoft JhengHei
    Gui, Verification:Add, Text, x210 y390, Y:
    Gui, Verification:Font, s9 norm cBlack, Microsoft JhengHei
    Gui, Verification:Add, Edit, x230 y388 w70 h22 vVerificationSubmitYInput BackgroundWhite, %verificationSubmitY%

    Gui, Verification:Font, s8 italic c7f8c8d, Microsoft JhengHei
    Gui, Verification:Add, Text, x310 y390 w150, (輸入後點擊送出)

    Gui, Verification:Font, s8 italic c7f8c8d, Microsoft JhengHei
    Gui, Verification:Add, Text, x35 y420 w410, ℹ️ 使用 Window Spy 取得座標,輸入後會自動點擊送出按鈕

    Gui, Verification:Font, s10 norm cFFFFFF, Microsoft JhengHei
    Gui, Verification:Add, Button, x35 y455 w200 h40 gToggleMonitorButton vVerificationMonitorBtn, ▶️ 開始自動監控
    Gui, Verification:Add, Button, x245 y455 w200 h40 gSaveCoordinatesButton, 💾 儲存座標設定

    ; 說明文字
    Gui, Verification:Font, s8 italic c7f8c8d, Microsoft JhengHei
    Gui, Verification:Add, Text, x20 y510 w460 Center, ℹ️ 請先使用 F8 截取驗證碼視窗並填入 Text_驗證碼視窗 文字碼

    ; 顯示視窗
    Gui, Verification:Show, w500 h550
    Return

    ; 按鈕事件處理
    FetchCodeButton:
        ; 先從輸入框讀取帳號
        Gui, Verification:Submit, NoHide
        verificationAccount := VerificationAccountInput

        UpdateStatusText("🔑 正在取得驗證碼...")
        if (FetchVerificationCode()) {
            GuiControl, Verification:, VerificationCodeDisplay, %verificationCode%
            UpdateStatusText("✅ 驗證碼已取得: " . verificationCode)
            Sleep, 1500
            UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
        }
    Return

    CopyCodeButton:
        if (verificationCode = "") {
            MsgBox, 48, 提示, 尚未取得驗證碼！`n`n請先點擊「取得驗證碼」。
            Return
        }
        Clipboard := verificationCode
        UpdateStatusText("📋 驗證碼已複製: " . verificationCode)
        Sleep, 1500
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
    Return

    AutoInputButton:
        Gui, Verification:Hide
        AutoInputVerificationCode(3)
    Return

    ToggleMonitorButton:
        if (verificationMonitoring) {
            StopVerificationMonitoring()
        } else {
            StartVerificationMonitoring()
        }
    Return

    SaveCoordinatesButton:
        Gui, Verification:Submit, NoHide
        verificationClickX := VerificationClickXInput
        verificationClickY := VerificationClickYInput
        verificationSubmitX := VerificationSubmitXInput
        verificationSubmitY := VerificationSubmitYInput
        UpdateStatusText("💾 座標已儲存 | 輸入框: (" . verificationClickX . ", " . verificationClickY . ") 送出: (" . verificationSubmitX . ", " . verificationSubmitY . ")")
        Sleep, 2000
        UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
    Return

    VerificationGuiClose:
    VerificationGuiEscape:
        ; 關閉視窗時停止監控
        if (verificationMonitoring) {
            StopVerificationMonitoring()
        }
        Gui, Verification:Destroy
    Return
}

; 開始驗證碼自動監控
StartVerificationMonitoring() {
    global verificationMonitoring, Text_驗證碼視窗, verificationAccount
    global verificationClickX, verificationClickY, verificationSubmitX, verificationSubmitY

    ; 檢查是否已設定 FindText 文字碼
    if (Text_驗證碼視窗 = "") {
        MsgBox, 48, 警告, 尚未設定驗證碼視窗的 FindText 文字碼！`n`n請先使用 F8 截取驗證碼輸入視窗，`n生成 FindText 文字碼後填入程式中的 Text_驗證碼視窗 變數。
        Return
    }

    ; 儲存座標設定和帳號
    Gui, Verification:Submit, NoHide
    verificationAccount := VerificationAccountInput
    verificationClickX := VerificationClickXInput
    verificationClickY := VerificationClickYInput
    verificationSubmitX := VerificationSubmitXInput
    verificationSubmitY := VerificationSubmitYInput

    ; 開始監控
    verificationMonitoring := true
    GuiControl, Verification:, VerificationMonitorBtn, ⏸️ 停止監控
    UpdateStatusText("🔍 驗證碼自動監控已啟動...")

    ; 啟動監控計時器 (每 2 秒檢測一次)
    SetTimer, ProcessVerificationMonitoring, 2000
}

; 停止驗證碼自動監控
StopVerificationMonitoring() {
    global verificationMonitoring

    verificationMonitoring := false
    SetTimer, ProcessVerificationMonitoring, Off
    GuiControl, Verification:, VerificationMonitorBtn, ▶️ 開始自動監控
    UpdateStatusText("⏹️ 驗證碼自動監控已停止")
    Sleep, 1500
    UpdateStatusText("🟢 待機中 | 按下熱鍵啟動功能")
}

; 處理驗證碼監控循環
ProcessVerificationMonitoring:
    if (!verificationMonitoring) {
        Return
    }

    ; 使用 FindText 偵測驗證碼視窗
    result := FindImage_Tiered(Text_驗證碼視窗)

    if (result.found) {
        ; 找到驗證碼視窗
        UpdateStatusText("✅ 偵測到驗證碼視窗! 位置: " . result.x . ", " . result.y)

        ; 取得驗證碼
        UpdateStatusText("🔑 正在取得驗證碼...")
        if (FetchVerificationCode()) {
            GuiControl, Verification:, VerificationCodeDisplay, %verificationCode%
            UpdateStatusText("✅ 驗證碼已取得: " . verificationCode)

            ; 點擊指定座標
            RandomSleep(300, 500)
            UpdateStatusText("🖱️ 點擊座標: X=" . verificationClickX . " Y=" . verificationClickY)
            HumanMouseMove(verificationClickX, verificationClickY, 2)
            RandomSleep(100, 200)
            Click

            ; 等待後使用貼上功能輸入驗證碼 (避免中文輸入法干擾)
            RandomSleep(500, 800)
            UpdateStatusText("📋 貼上驗證碼: " . verificationCode)

            ; 複製到剪貼簿
            Clipboard := verificationCode
            RandomSleep(50, 100)

            ; 使用 Ctrl+V 貼上
            Send, ^v
            RandomSleep(200, 400)

            ; 點擊送出按鈕
            UpdateStatusText("🖱️ 點擊送出按鈕: X=" . verificationSubmitX . " Y=" . verificationSubmitY)
            HumanMouseMove(verificationSubmitX, verificationSubmitY, 2)
            RandomSleep(100, 200)
            Click
            RandomSleep(100, 200)

            UpdateStatusText("✅ 驗證碼已自動輸入並送出完成!")

            ; 完成後暫停監控 10 秒,避免重複觸發
            verificationMonitoringPaused := true
            Sleep, 10000
            verificationMonitoringPaused := false
            UpdateStatusText("🔍 驗證碼自動監控運行中...")
        } else {
            UpdateStatusText("❌ 取得驗證碼失敗,繼續監控...")
        }
    }
Return

; GUI 關閉事件
MainGuiClose:
    ExitApp
Return

MainGuiEscape:
    ; 主 GUI 按 Escape 不做任何動作，避免誤關閉
Return
