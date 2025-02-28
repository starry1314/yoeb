; #Include <FindText>

Loop

{
    ; 主偵測條件
    if (DetectCondition())
    {
        
		; 執行放大並確認完成

        if (ZoomIn())
        {
            ; 執行縮小並確認完成
			
            if (ZoomOut())
            {
                ; 完整流程完成後等待
                Sleep 3000
            }
        }
    }
	Sleep 2000
	DetectAndClick()
	
    
}

DetectCondition()
{
    conditionText := "|<>**50$63.000000000003U01s00C000000BU00000TU01g00Dk0Ds03sy00y00FUU3y08A001400GE01A01U002G009800000GE00000E072G700000000HE000000032G700000000GE00000001yHs0000000QOFU00000030I4000003unmQzw0000k2Tbi1k000AQHxw03U00DAzDjDza001n0TRzU6M08Qs1lgk0P43D6035j01Anw"
    
    if (ok:=FindText(X, Y, 106, 76, 378, 564, 0, 0, conditionText))
    {
        ; FindText().Click(X, Y, "L")
		
        return true
		
    }
    return false
}

ZoomIn()
{
    
	; 放大按鈕特徵碼
    zoomInText := "|<>**50$15.zzw00U04TwXzYE4W0YE4W0YE4W0YTwU05zzzzs00004"
    
    ; 嘗試點擊放大
    if (ok:=FindText(X, Y, 105, 54, 903, 72, 0, 0, zoomInText))
    {
        send {F12}
		FindText().Click(X, Y, "L")
        
        ; 等待放大完成(最多5秒)
        startTime := A_TickCount
        Loop
        {
            ; 檢測放大完成標誌（需替換實際完成標誌）
			zoomOutText := "|<>**50$8.DnwVzTq7V8HwU"
            if (FindText(X, Y,995-150000, 8-150000, 995+150000, 8+150000, 0, 0, zoomOutText))
            {
                ToolTip "放大完成"
                Sleep 500
                ToolTip
                return true
            }
            
            ; 超時處理
            if (A_TickCount - startTime > 5000)
            {
                ToolTip "放大操作超時"
                Sleep 1000
                ToolTip
                return false
            }
            Sleep 300
        }
    }
    return false
}

ZoomOut()
{
    ; 縮小按鈕特徵碼
    zoomInText := "|<>**50$8.DnwVzTq7V8HwU"
    
    ; 嘗試點擊縮小
    if (ok:=FindText(X, Y, 645, 0, 1019, 21, 0, 0, zoomInText))
    {
        FindText().Click(X, Y, "L")
        
        ; 等待縮小完成(最多5秒)
        startTime := A_TickCount
        Loop
        {
            ; 檢測縮小完成標誌（需替換實際完成標誌）
			zoomInText := "|<>**50$15.zzw00U04TwXzYE4W0YE4W0YE4W0YTwU05zzzzs00004"
            if (FindText(X, Y, 105, 54, 903, 72, 0, 0, static zoomInText))
            {
                ToolTip "縮小完成"
                Sleep 500
                ToolTip
				send {F12}
                return true
				
            }
            
            ; 超時處理
            if (A_TickCount - startTime > 5000)
            {
                ToolTip "縮小操作超時"
                Sleep 1000
                ToolTip
                return false
            }
			
            Sleep 300
			
        }
    }
    return false
}

DetectAndClick()
{
   
	; MAP特徵碼
    Detect := "|<>##0$0/0/917253,3/-3/575757,4/0/D0D0D0,0/11/785D3B"
    
    ; 點擊取出
    if (ok:=FindText(343-150000, 501-150000, 343+150000, 501+150000, 0, 0, Detect))
    {
        send {F12}
        

                Send, {Ctrl down}
				sleep 200
                FindText().Click(349, 466, "L")
				sleep 200
				FindText().Click(377, 435, "L")
				sleep 200
				FindText().Click(376, 463, "L")
                Send, {Ctrl up}
				sleep 1000
				FindText().Click(364, 508, "L")
				sleep 2000
				FindText().Click(364, 508, "L")
				send {F12}
				
				

    }
    return false
}