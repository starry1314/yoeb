@echo off
REM 檢查是否已經以管理員權限運行，如果是，則退出腳本
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 請以管理員身份運行此腳本。
    pause
    exit /b
)

REM 移動到腳本目錄
PUSHD %~DP0 & cd /d "%~dp0"

setlocal EnableDelayedExpansion

REM 指定INI檔案的路徑
set "inifile=C:\Users\Administrator\Desktop\IOT\setnb.ini"
set "newName="
set "ipAddress="

REM 從INI檔案中讀取nob值
for /f "tokens=1,2 delims==" %%a in ('type "%inifile%"') do (
    if "%%a"=="nob" set "nob=%%b"
)

REM 從ipconfig命令中獲取IPv4地址
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4"') do (
    set "ipAddress=%%a"
    goto breakLoop
)

:breakLoop

REM 如果未找到nob值或IP地址，則顯示錯誤消息並退出
if not defined nob (
    echo 無法找到nob值。
    goto end
)

if not defined ipAddress (
    echo 無法找到IP地址。
    goto end
)

REM 移除IP地址中的空格
set "ipAddress=%ipAddress: =%"
REM 從IP地址中提取C段和D段
for /f "tokens=3,4 delims=." %%i in ("%ipAddress%") do set "ipAddress=%%i_%%j"
REM 將nob值和IP地址結合為新的電腦名稱
set "newName=V-%nob%-%ipAddress%"

REM 使用WMIC命令將電腦重新命名
runas /user:Administrator "wmic computersystem where name=\"%computername%\" call rename name=\"%newName%\""

:end
endlocal
