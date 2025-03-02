Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
sleep 1000
FileReadLine, line, C:\Users\Administrator\Desktop\iot\list.txt, %setnb%
not:=","
StringSplit, OutputArray, line ,%not%
global iotcon:=OutputArray8
global iotconNB:=OutputArray8
global ebmodtxt:=OutputArray9
ttxt:="#"
StringSplit, ptimes, ebmodtxt ,%ttxt%
global ebmod:=ptimes1
global man:=ptimes2
global redblue:=ptimes3
global war:=ptimes4
global ebvod2:=ptimes5
global alltimetxt:=OutputArray5
global gamename:=OutputArray10
global gamepass:=OutputArray11
global mailpass:=OutputArray28
Iniread,yoyo,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,googlename
Run "D:\32808\PathOfExile_x64.exe" --nopatch --nologo
sleep 3000
Send {F12}
CoordMode, Mouse, Screen
sleep 300
Click, 676,700
sleep 300
CoordMode, Mouse, Relative
poename:="Path of Exile"
WinActivate,%poename%
while(lookpoe<35)
{
PixelSearch, Px, Py, 557,591, 563,597,0x76C0FE,8, Fast
if ErrorLevel
{
Sleep 1000
lookpoe++
}
else
{
sleep 700
if(lookpoe==30)
{
lookpoe=35
}
else
{
lookpoe=30
}
}
}
sleep 1000
Click, 508,421
Sleep 100
Click, 508,421
Sleep 500
send {Backspace}
clipboard:=gamename
sleep 500
Click, 508,421
Sleep 100
send ^v
sleep 1000
clipboard:=gamepass
Click, 508,440
Sleep 300
Click, 490,440
Sleep 300
Click, 480,440
send ^v
sleep 1000
Click, 575,419
Sleep 500
Click, 575,419
Sleep 5000
PixelSearch, Px, Py, 343,279, 430,388,0x76C0FE,6, Fast
if ErrorLevel
{
Sleep 1000
}
else
{
PixelSearch, Px, Py, 236,362, 266,369,0x76C0FE,6, Fast
if ErrorLevel
{
IniRead,iotkey,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotkey
IniRead,iotname,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotname
Iniread,nob,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
pickerror:="seeerror"
dayatxt=https://maker.ifttt.com/trigger/%iotname%/with/key/%iotkey%?value1=%nob%&value2=%pickerror%
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()
Sleep 1000
MsgBox, 0, poerun, ??瑼Ｘ
}
else
{
IniRead,iotkey,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotkey
IniRead,iotname,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotname
Iniread,nob,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
pickerror:="email"
dayatxt=https://maker.ifttt.com/trigger/%iotname%/with/key/%iotkey%?value1=%nob%&value2=%pickerror%
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()
Sleep 1000
MsgBox, 0, poerun, EMAIL????瑼Ｘ
}
}
Send {F12}
CoordMode, Mouse, Screen
sleep 300
Click, 676,700
sleep 300
CoordMode, Mouse, Relative
poename:="Path of Exile"
WinActivate,%poename%