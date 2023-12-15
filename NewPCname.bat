@echo off
setlocal EnableDelayedExpansion

set "inifile=C:\Users\Administrator\Desktop\IOT\setnb.ini"
set "newName="
set "ipAddress="

for /f "tokens=1,2 delims==" %%a in ('type "%inifile%"') do (
    if "%%a"=="nob" set "nob=%%b"
)

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4"') do (
    set "ipAddress=%%a"
    goto breakLoop
)

:breakLoop

if not defined nob (
    echo 無法找到nob值。
    goto end
)

if not defined ipAddress (
    echo 無法找到IP地址。
    goto end
)

set "ipAddress=%ipAddress: =%"
set "newName=%nob%-%ipAddress%"

wmic computersystem where name="%computername%" call rename name="%newName%"

:end
endlocal
