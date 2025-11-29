@echo off
setlocal

:: === 檢查是否為系統管理員，不是就提升 ===
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 需要系統管理員權限，正在嘗試提升...
    powershell -NoProfile -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set "inifile=C:\IOT\setnb.ini"
set "psfile=%temp%\pc_rename.ps1"

if not exist "%inifile%" (
    echo 找不到 %inifile%
    pause
    exit /b
)

:: === 一行一行產生 PowerShell 腳本，避免 ( ) 解析問題 ===
> "%psfile%"  echo $ini = '%inifile%'
>>"%psfile%" echo if (-not (Test-Path $ini^)) { Write-Host "找不到 ini 檔案：$ini"; exit 1 }
>>"%psfile%" echo $line = (Get-Content $ini^) ^| Where-Object { $_ -match '^\s*nob=' } ^| Select-Object -First 1
>>"%psfile%" echo if (-not $line^) { Write-Host "找不到 nob= 這一行"; exit 1 }
>>"%psfile%" echo $n = ($line -replace '^\s*nob=','').Trim()
>>"%psfile%" echo if (-not $n^) { Write-Host "nob 值為空"; exit 1 }
>>"%psfile%" echo if ($n.Length -lt 2^) { $n = '0' + $n }
>>"%psfile%" echo if ($n.Length -gt 2^) { $n = $n.Substring($n.Length-2, 2^) }
>>"%psfile%" echo $newName = 'D' + $n
>>"%psfile%" echo $cs = Get-CimInstance Win32_ComputerSystem
>>"%psfile%" echo $curName = $cs.Name
>>"%psfile%" echo Write-Host "目前名稱：" $curName
>>"%psfile%" echo Write-Host "目標名稱：" $newName
>>"%psfile%" echo if ($curName -eq $newName^) {
>>"%psfile%" echo ^    Write-Host "名稱相同 → 不變更、不重開機"
>>"%psfile%" echo ^    exit 0
>>"%psfile%" echo }
>>"%psfile%" echo Write-Host "正在變更名稱並重開機..."
>>"%psfile%" echo Rename-Computer -NewName $newName -Force -Restart

:: === 執行 PowerShell 腳本 ===
powershell -NoProfile -ExecutionPolicy Bypass -File "%psfile%"

:: 清理暫存檔
del "%psfile%" >nul 2>&1

endlocal
exit /b
