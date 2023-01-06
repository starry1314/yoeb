; #Include <FindText>
global allw = 0
global err ="Error"
global BOXTOPX = 25
global BOXTOPY = 112
global METOPX = 456
global METOPY = 365
global MEX = 0
global MEY = 0
global BOXX = 0
global BOXY = 0
global SPACE = 29
global lagtime = 150
global ooxxX = 1518
global ooxxY = 593
global stop = 591
global ttt = 0
global out = 0
global alltime =0
global gemx =0
global gemy =0
global shopnb1 = 126
global shopag1 =10
global shopnb2 = 126
global shopag2 =10
global shopnb3 = 126
global shopag3 =10
global shopnb4 = 126
global shopag4 =10
global toplv =0
global MyText
global onlyeb
global findgo=0
global Alteration=0
global allbluered=0
SetMouseDelay, 7
SetDefaultMouseSpeed,10
#NoEnv
#SingleInstance Force

/*
 global ggcgui	:= "Garena - 遊戲中心"
 global ggclogin := "Garena - 遊戲平台"
 */

global ggcgui	:= "Garena - 游戏中心"
global ggclogin := "Garena - Your Ultimate Game Platform"

global poe := "Path of Exile"
global runmintime := 0
global timemin:= 0
global times:= 0
global overtime:=0
global gemlv:=0
global gname:=""
global colour := ""
global ggcid :=""
global pickok :=0
global gbname :=""
global name:=""
global afk=0

ChangeResolution(1024, 768)



Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
if(setnb==""||setnb==0)
{
InputBox, UserInput,  200, 200
setnb:=UserInput
IniWrite,%setnb%,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
sleep 1000
FileReadLine, line, C:\Users\Administrator\Desktop\iot\list.txt, %setnb%
not:=","
StringSplit, OutputArray, line ,%not%
global iotcon:=OutputArray8 ;遠端控制
global ebmodtxt:=OutputArray9 ;EB模式
ttxt:="#"
StringSplit, ptimes, ebmodtxt ,%ttxt%
global ebmod:=ptimes1
global man:=ptimes2
global redblue:=ptimes3
global war:=ptimes4
global alltimetxt:=OutputArray5 ;遊戲帳號

global gamename:=OutputArray10 ;遊戲帳號
global gamepass:=OutputArray11 ;遊戲密碼
global needopen:=OutputArray12 ;開啟程式
global runnb:=OutputArray13 ;掛機模式1=保力 0=EB
global ebonly:=OutputArray14 ;自動收穫 1是收貨
global givetimetxt:=OutputArray15 ;收穫時間
global ebname:=OutputArray16 ;EB帳號
global ebpass:=OutputArray17 ;EB密碼
global abcdmod:=OutputArray18 ;abcd腳本
global sk5mod:=OutputArray19 ;網路連線模式 0不設定 1=SK5 2=中華撥接
global sk5ip:=OutputArray20 ;SK5IP
global sk5PORT:=OutputArray21 ;sk5PORT
global sk5name:=OutputArray22 ;sk5name
global sk5pass:=OutputArray23 ;sk5pass
global pickman:=OutputArray24 ;收貨人ID
global newname:=OutputArray25 ;創建的
global abcdiot:=OutputArray26 ;1=發號
}



Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
sleep 1000
FileReadLine, line, C:\Users\Administrator\Desktop\iot\list.txt, %setnb%
not:=","
StringSplit, OutputArray, line ,%not%
global iotcon:=OutputArray8 ;遠端控制
global ebmodtxt:=OutputArray9 ;EB模式
ttxt:="#"
StringSplit, ptimes, ebmodtxt ,%ttxt%
global ebmod:=ptimes1
global man:=ptimes2
global redblue:=ptimes3
global war:=ptimes4
global alltimetxt:=OutputArray5 ;
global gamename:=OutputArray10 ;遊戲帳號
global gamepass:=OutputArray11 ;遊戲密碼
global needopen:=OutputArray12 ;開啟程式
global runnb:=OutputArray13 ;掛機模式1=保力 0=EB
global ebonly:=OutputArray14 ;自動收穫 1是收貨
global givetimetxt:=OutputArray15 ;收穫時間
global ebname:=OutputArray16 ;EB帳號
global ebpass:=OutputArray17 ;EB密碼
global abcdmod:=OutputArray18 ;abcd腳本
global sk5mod:=OutputArray19 ;網路連線模式 0不設定 1=SK5 2=中華撥接
global sk5ip:=OutputArray20 ;SK5IP
global sk5PORT:=OutputArray21 ;sk5PORT
global sk5name:=OutputArray22 ;sk5name
global sk5pass:=OutputArray23 ;sk5pass
global pickman:=OutputArray24 ;收貨人ID
global newname:=OutputArray25 ;創建的
global abcdiot:=OutputArray26 ;1=發號


FileReadLine, line2, C:\Users\Administrator\Desktop\iot\list.txt, 2
not:=","
StringSplit, Output, line2 ,%not%
global abcdname:=Output16 ;ABCD帳號
global abcdpass:=Output17 ;ABCD密碼
global ebvod:=Output18 ;0=國際服 2=台服

sleep 1000
if(runnb>0)
{
	if FileExist("D:\32808\Content-tw.ggpk")
	{
	  FileMove, D:\32808\Content.ggpk, D:\32808\Content-en.ggpk
	  sleep 500
	  FileMove, D:\32808\Content-tw.ggpk, D:\32808\Content.ggpk
	}
	sleep 1000
	FileDelete, %A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini
	sleep 1000
	
		If FileExist("C:\Users\Administrator\Desktop\yoeb-main\ABCD\garena_tw_production_Config.ini" )
	{
		Filecopy ,C:\Users\Administrator\Desktop\yoeb-main\ABCD\garena_tw_production_Config.ini,%A_MyDocuments%\My Games\Path of Exile\,1
	}
	Else
	{
		Filecopy ,C:\Users\Administrator\Desktop\yoeb-main\Configuration\%ebmod%\garena_tw_production_Config.ini,%A_MyDocuments%\My Games\Path of Exile\,1
	}

}
else
{
	if FileExist("D:\32808\Content-en.ggpk")
	{
	  FileMove, D:\32808\Content.ggpk, D:\32808\Content-tw.ggpk
	  sleep 500
	  FileMove, D:\32808\Content-en.ggpk, D:\32808\Content.ggpk
	}
	
IniWrite,%ebmod%,%A_Desktop%\yoeb-main\Configuration\profile.ini,general,default
IniWrite,%ebname%,%A_Desktop%\yoeb-main\Configuration\%ebmod%\config.ini,general,identifier

IniWrite,%ebvod%,%A_Desktop%\yoeb-main\Configuration\%ebmod%\config.ini,general,poe_version

sleep 200
IniWrite,%ebpass%,%A_Desktop%\yoeb-main\Configuration\%ebmod%\config.ini,general,key
if(war==1)
{
IniWrite,488,%A_Desktop%\yoeb-main\Configuration\%ebmod%\coordinates.ini,map,map_device_open_button_y
}

FileDelete, %A_MyDocuments%\My Games\Path of Exile\eb.filter
FileDelete, %A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini
FileDelete, %A_MyDocuments%\My Games\Path of Exile\production_Config.ini

Filecopy ,%A_ScriptDir%\Configuration\%ebmod%\garena_tw_production_Config.ini,%A_MyDocuments%\My Games\Path of Exile\,1
Filecopy ,%A_ScriptDir%\Configuration\%ebmod%\production_Config.ini,%A_MyDocuments%\My Games\Path of Exile\,1
Filecopy ,%A_ScriptDir%\Configuration\%ebmod%\eb.filter,%A_MyDocuments%\My Games\Path of Exile\,1

run %A_ScriptDir%\checkrun.exe

sleep 1000
}




if(sk5mod==2)
{

ipok=0
while(ipok==0)
{
run %A_ScriptDir%\hinet.cmd
sleep 1000
win:="C:\Windows\system32\cmd.exe"
IfWinExist,%win%
{
sleep 30000
}
else
{
ipok=1
}

}
}



if(sk5mod==1)
{

FileDelete, C:\Users\Administrator\AppData\Roaming\Proxifier4\Profiles\Default.ppx
sleep 500
Filecopy, C:\Users\Administrator\Desktop\yoeb-main\toolbox\Default.ppx ,C:\Users\Administrator\AppData\Roaming\Proxifier4\Profiles\Default.ppx,1

sleep 2000
run C:\Program Files (x86)\Proxifier\Proxifier.exe
sleep 2000
run C:\Program Files (x86)\Proxifier\Proxifier.exe
sleep 2000
send {alt down} 
sleep 300
send {P}
sleep 300
send {alt up} 
sleep 600
send {Enter}
sleep 900
send {Enter}
sleep 900
sleep 900
clipboard =%sk5ip%
send {ctrl down} 
sleep 200
send {V}
sleep 200
send {ctrl up} 
sleep 1000
send {tab}
sleep 1000
clipboard =%sk5PORT%
sleep 1000
send {ctrl down} 
sleep 150
send {V}
sleep 150
send {ctrl up} 
sleep 1000
send {tab}
sleep 1000
send {down}
sleep 1000
send {tab}
sleep 1000
Click, 34,179
sleep 1000
send {tab}
sleep 1000
clipboard =%sk5name%
sleep 1000
send {ctrl down} 
sleep 150
send {V}
sleep 150
send {ctrl up} 
sleep 1000
send {tab}
clipboard =%sk5pass%
sleep 1000
send {ctrl down} 
sleep 150
send {V}
sleep 150
send {ctrl up} 
sleep 600

send {tab}
sleep 1000

send {Enter}
sleep 1000

send {Enter}
sleep 1000

send {Enter}
sleep 1000

Click, 46,264
sleep 1000

send {alt down} 
sleep 300
send {F4}
sleep 300
send {alt up} 
sleep 1000

}







sleep 2000
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
;WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp.Open("GET", "http://www.netikus.net/show_ip.html", false)
WinHttp.Send()
myip:=% WinHttp.ResponseText

sleep 1000
Iniread,rebackkey,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,rebackkey
Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
dayatxt=https://maker.ifttt.com/trigger/yolist/with/key/%rebackkey%?value1=F%setnb%&value2=%myip%

WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
;WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()

sleep 1000




if(iotcon==2)
{
afk=1
}

if(iotcon==3)
{
afk=2
}

if(iotcon==4)
{
afk=3
}


Iniread,onlyeb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,onlyeb



if(ebonly>3)
{


MsgBox, 4,, 是=直接上線開始接貨__否=等待下次收貨時間再上線__默認=是,20

IfMsgBox Yes
{
onlyeb=0
login()
runpick()
endrestime()
}
IfMsgBox no
{
endrestime()
}
IfMsgBox, Timeout
{
onlyeb=0
login()
runpick()
endrestime()
}

}

if(iotcon==1)
{
onlyeb=0
}

if(afk>0||onlyeb==0)
{

MsgBox, 4,, 是否要跳過收貨開始掛機(按取消或不管直接進收貨) ,10
IfMsgBox Yes
{
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
IniWrite,1,%A_Desktop%\iot\setnb.ini,OutputVar,onlyeb
endrestime()
}
IfMsgBox, no
{
login()
runpick()
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
IniWrite,1,%A_Desktop%\iot\setnb.ini,OutputVar,onlyeb
endrestime()
}
IfMsgBox, Timeout
{
login()
runpick()
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
IniWrite,1,%A_Desktop%\iot\setnb.ini,OutputVar,onlyeb
endrestime()
}
}
else{


MsgBox, 4,, 是否要先收貨(按取消或不管直接進入掛機) ,10
IniWrite,1,%A_Desktop%\iot\setnb.ini,OutputVar,onlyeb
IfMsgBox Yes
{
login()
runpick()
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
endrestime()
}
IfMsgBox, no
{
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
endrestime()
}
IfMsgBox, Timeout
{
if(runnb==0)
{
openeb()
}
if(runnb==2)
{
openabcd()
}
endrestime()
}
}


	login()
	{
	global poe := "Path of Exile"
	global poecall := "請輸入 OTP 密碼"
	IniWrite,false,%A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini ,DISPLAY,framerate_limit_enabled
	poereboot:
	Process, Close ,Garena.exe
	WinClose,%poe%

	Runggc =C:\Program Files (x86)\Garena\Garena\Garena.exe
	if FileExist(Runggc)
	{
	Run %Runggc%
	Sleep 500
	WinWait,%ggclogin%
	Sleep 500
	WinActivate , %ggclogin%
	sleep 1000

	Click, 659,239
	Sleep 100
	Click, 659,239
	Sleep 100
	Click, 659,239
	Sleep 100
	Sleep 500
	send {Backspace down}
	sleep 3000
	send {Backspace up}
	Sleep 500
	clipboard:=gamename
	sleep 100
	send ^v
	sleep 500
	Click, 668,120
	Sleep 100
	Click, 668,120
	sleep 500
	Click, 663,282
	Sleep 100
	Click, 663,282
	Sleep 500
	send {Backspace down}
	sleep 1500
	send {Backspace up}
	Sleep 500
	clipboard:=gamepass
	send ^v
	Send {Enter}
	WinWait,%ggcgui%,,40
	if ErrorLevel
	{

	MsgBox, 4,, 帳號登入異常3秒後重試(按否取消) ,3
	IfMsgBox Yes
	{
	goto poereboot
	}
	IfMsgBox, Timeout
	{
	goto poereboot
	}
	IfMsgBox, no
	{
	return
	}
	}


	Sleep 500
	if WinExist(ggcgui)
	{
	Sleep 4000
	WinActivate , %ggcgui%
	Sleep 7000
	
	Click,  733,30
	Sleep 1000
	Click,  733,30

	Sleep 3000
	PixelSearch, Px, Py, 162,553, 166,557,0x19142F,5, Fast
	if ErrorLevel 	
	{
	MouseMove, 800 ,300
	}
	else
	{
	MouseMove, 600 ,300
	}
		
	Sleep 1000
	Click, down
	sleep 100
	Click, up
	Sleep 1000
	Click, down
	sleep 100
	Click, up
	sleep 100
	Click, down
	sleep 100
	Click, up
	Sleep 5000
	
loop
{
t1:=A_TickCount, Text:=X:=Y:=""
Text:="|<>**50$30.zs3zzkDuzRzE/PNTTjxTMPjs1TPyzxMPPTxTTHs1HRnTxyCnM1nQuzxzHSmx1DamV1wzyzU"
if (ok:=FindText(X, Y, 646-150000, 482-150000, 646+150000, 482+150000, 0, 0, Text))
{
FindText().Click(X, Y, "L")
sleep, 1000

goto,loginok
}
}
loginok:
	fpoeicon=0
	Sleep 1000
	WinActivate , %ggcgui%
	Sleep 3000
	WinGetPos, Xpos, Ypos ,winX,winY
	RX:= winX/2
	RY:= winY-20
	MouseMove, %RX%, %RY%
	Sleep 1000
	Click, down
	sleep 200
	Click, up
	sleep 200
	Click, down
	sleep 200
	Click, up
	Sleep 2000


	WinWait,%poe%,,30
	if ErrorLevel
	{
	Click, down
	sleep 200
	Click, up
	Sleep 1000

	WinWait,%poecall%,,5
	if ErrorLevel
	{
	}
	else{
	Process, Close ,notepad.exe
	Process, Close ,notepad.exe
	Process, Close ,SqnXXHqfNHiv.exe
	Process, Close ,SqnXXHqfNHiv.exe
	Process, Close ,EBreboot.exe
	MsgBox,(YO)偵測到需要手機驗證,關閉EB,關閉自動重啟,關閉EBreboot
	exitapp
	}
	
	WinGetActiveTitle, Haystack
	Needle := "速度"
	Needle2 := "完成"
	If InStr(Haystack, Needle)
	{
	Process, Close ,notepad.exe
	Process, Close ,notepad.exe
	Process, Close ,SqnXXHqfNHiv.exe
	Process, Close ,SqnXXHqfNHiv.exe
	MsgBox, (YO)偵測到更新,關閉EB,關閉自動重啟,關閉EBreboot
	exitapp
	}
	Else
	{
	}
	If InStr(Haystack, Needle2)
	{
	Process, Close ,notepad.exe
	Process, Close ,notepad.exe
	Process, Close ,SqnXXHqfNHiv.exe
	Process, Close ,SqnXXHqfNHiv.exe
	MsgBox, (YO)偵測到更新,關閉EB,關閉自動重啟,關閉EBreboot
	exitapp
	}
	Else
	{
	}
	
	WinWait,%poe%,,25
	if ErrorLevel
	{
	MsgBox, 4,, POE主程式開啟異常 3秒後重試(按否取消) ,3
	IfMsgBox Yes
	{
	goto poereboot
	}
	IfMsgBox, Timeout
	{
	goto poereboot
	}
	IfMsgBox, no
	{
	return
	}
	}
	}
	Process, Close ,Garena.exe
	Sleep, 1000
	err:="Error"
	IfWinExist %err%
	{
	WinActivate
	Sleep, 1000
	Send {Enter}
	Sleep, 1000
	Send {Enter}
	Sleep, 2000
	Click 368, 678,1
	Sleep, 2000
	}
	}
	}

	}


runpick()
{

;偵測GO
outtime=0
	Sleep, 25000
	if WinExist(poe)
	WinActivate
/*findgo=0
while(findgo==0)
{
PixelSearch, Px, Py, 418,411, 428,422,0x021429,6, Fast
if ErrorLevel
{
	if WinExist(poe)
		WinActivate

sleep 1000
outtime++
if(outtime>30)
{
findgo=1
}
}
else
{
findgo=1
}
}
outtime=0
findgo=0
*/

if(afk==1)
{
Sleep, 2000
Send {enter}
Sleep, 1000
Send {enter}
Sleep, 1000
Send {enter}
Sleep, 1000
Send {Enter}
Sleep, 30000

Send {space}
Sleep, 1000
clipboard=/hideout
Send {enter}
Sleep, 500
Send ^v
Sleep, 500
Send {enter}
Sleep, 30000
Send {space}
Sleep, 1000
Send {space}
Sleep, 1000

WinActivate
WinMinimize 
WinMinimize ,%poe%
ExitApp
}


if(afk>1)
{

Sleep, 5000
Send {enter}
;創繳
Sleep, 1000
Click, 504,389
Sleep, 10000
Send {enter}
Sleep, 15000

if(afk==3)
{
Sleep, 1000
Click, 504,389 ;女巫
Sleep, 1000
Click, 504,389 ;女巫
Sleep, 1000
}
else
{
Sleep, 1000
Click, 677,417 ;女巫
Sleep, 1000 
Click, 677,417 ;女巫
Sleep, 1000 

}

Sleep, 5000
Click, 495,581 
Sleep, 1000
Click, 495,581 
Sleep, 1000
run copyid.exe
Sleep, 1000
Sleep, 500
Send ^v
Sleep, 1000
Send {enter}
Sleep, 1000
Send {enter}
Sleep, 30000

WinActivate
WinMinimize 
WinMinimize ,%poe%
ExitApp
}



Sleep, 2000
Send {enter}
Sleep, 1000
Send {enter}
Sleep, 1000
Send {enter}
Sleep, 1000
Send {Enter}
Sleep, 15000
;村莊偵測按鈕


findgo=0
while(findgo==0)
{
PixelSearch, Px, Py, 153,570, 163,580,0x0B2945,6, Fast
if ErrorLevel
{
 ;391 606 0x618AA0 藏身處
 
  if WinExist(poe)
	WinActivate
	Send {Enter}
	sleep 1000
	Send {Enter}
	sleep 1000
	Send {Enter}
 sleep 3000
}
else
{
findgo=1
}
}
findgo=0

sleep 3000






if(ebonly>3) ;收貨號
{

Send {space}
Sleep, 1000
clipboard=/hideout
Send {enter}
Sleep, 500
Send ^v
Sleep, 500
Send {enter}
Sleep, 30000
Send {space}
Sleep, 1000
Send {space}
Sleep, 1000

Send, {S} ;開介面

PixelSearch, Px, Py, 220, 55, 230, 65, 0x417998, 10, Fast
	if ErrorLevel
	{
	SLEEP 1000
	Send, {S} ;開介面
	SLEEP 1000
			PixelSearch, Px, Py, 220, 55, 230, 65, 0x417998, 10, Fast
		if ErrorLevel
		{
		SLEEP 1000
		Click, 151,581
		SLEEP 1000
		Click, 169,495
		}
	}
	

Sleep, 2000
Click, 197,122  ;開組隊
Sleep, 1000
Click, 197,122
Sleep, 1000

looptime:=ebonly*24
	LOOP %looptime%
	{


	PixelSearch, Px, Py, 90, 160, 100, 170, 0x11D577, 10, Fast
	if ErrorLevel
	{
		sleep 2500
	}
	else
	{
	click, right 292,184
	sleep 900
	click 373,373
	sleep 900
	click 248,213
	sleep 900
	}
	}
 poe := "Path of Exile"
	Process, Close ,PathOfExile.exe
	WinClose,%poe%


endrestime()

;開始偵測組隊情況 有人邀組隊就邀對方公會

;時間是EBONLY=分鐘數
;時間超過後 關閉POE 然後進行倒數重開機作業

ExitApp
}




;村莊偵測按鈕是否不建
while(findgo==0)
{
PixelSearch, Px, Py, 150,567, 166,583,0x0B2945,10, Fast
if ErrorLevel
{
sleep 1000
findgo=1
}
else
{
allw++
Send {space}
Sleep, 3000
clipboard=/hideout
Send {enter}
Sleep, 500
Send, {Control down}
Sleep, 50
Send, v
Sleep, 50
Send, {Control up}
Sleep, 500
Send {enter}
Sleep, 300
if(allw>30)
{
findgo=1
}
}
Send {enter}
Sleep, 100

}


Send {space}
Sleep, 1000


allw=0
;藏身處 下面白白
Sleep, 10000
findgo=0
while(findgo==0)
{
PixelSearch, Px, Py, 386,601, 396,611,0x618AA0,6, Fast
if ErrorLevel
{
allw++
Send {space}
Sleep, 1000
clipboard=/hideout
Send {enter}
Sleep, 500
Send, {Control down}
Sleep, 50
Send, v
Sleep, 50
Send, {Control up}
Sleep, 500
Send {enter}
Sleep, 10000
if(allw>15)
{
findgo=1
}

}
else
{

findgo=1
}
}
findgo=0










Send {esc}
Sleep, 500
Send {space}
Sleep, 500
Send {space}
Sleep, 1000




MouseMove ,336,166 ;點倉庫
Sleep, 1000
Click, 336,166
Sleep, 2000

send {Right}
Sleep, 500
send {Right}
Sleep, 500
send {Right}
Sleep, 1500
auto_ctrl_go_box()
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 1500
BOXTOPX = 25
auto_ctrl_go_me()
Sleep, 1500
Send {space}
Sleep, 1000
Send {space}
Sleep, 1000
Send, {S} ;開介面
Sleep, 2000
Click, 197,122  ;開組隊
Sleep, 1000
Click, 197,122

Sleep, 1000
Click, 289,514  ;點隊伍邀請框
Sleep, 1000
Click, 289,514
Sleep, 500
clipboard:=pickman
Sleep, 500
Send ^v
Sleep, 1000
Send {enter}
Sleep, 1000
Click, 133,121
Sleep, 500
Click, 133,121
Sleep, 10000 ;等公會邀請
PixelSearch, Px, Py, 300,162, 304,166,0x000000,5, Fast
if ErrorLevel
{
Sleep, 2000
Send {space}
Sleep, 1000
MouseMove ,391,262
Sleep, 1000
Click, 391,262
Sleep, 2000

Iniread,setnb,%A_Desktop%\iot\setnb.ini,OutputVar,nob
IniWrite,%setnb%,%A_ScriptDir%\yoset.ini,set,nob

IniRead,iotkey,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotkey
IniRead,iotname,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,iotname
IniRead,nob,C:\Users\Administrator\Desktop\yoeb-main\yoset.ini,set,nob
pickerror:="pickerror"
dayatxt=https://maker.ifttt.com/trigger/%iotname%/with/key/%iotkey%?value1=%nob%&value2=%pickerror%
;WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()






}
else
{
pickok=1
Click, 120,186
Sleep, 500
Click, 126,227
Sleep, 500
Click, 120,186
Sleep, 500
Click, 126,227
Sleep, 1000
Send {space}
Sleep, 1000
MouseMove ,316,286 ;點工倉
Sleep, 1000
Click, 316,286 ;點工倉
Sleep, 1200
Sleep, 1200
auto_ctrl_go_box()
Sleep, 1200
Send {space}
Sleep, 1000
MouseMove ,433,264  ;點倉
Sleep, 1000
Click, 433,264  ;點倉
Sleep, 1200
BOXTOPX = 170
auto_ctrl_go_me()
Sleep, 1200
Send {space}
Sleep, 1000
MouseMove ,364,294 ;點工倉
Sleep, 1000
Click, 364,294 ;點工倉
Sleep, 1200
auto_ctrl_go_box()
Sleep, 1000
Sleep, 1000
Send {space}
Sleep, 1000
MouseMove ,435,272 ;點倉
Sleep, 1000
Click, 435,272 ;點倉
Sleep, 1200
send {Right} ;換二頁
Sleep, 1000
BOXTOPX = 25
auto_ctrl_go_me()
Sleep, 1200
Send {space}
Sleep, 1000
MouseMove ,365,295 ;點工倉
Sleep, 1000
Click, 365,295 ;點工倉
Sleep, 1200
auto_ctrl_go_box()
Sleep, 1000
Sleep, 1000

Send {space}
Sleep, 1000
MouseMove ,434,271 ;點倉
Sleep, 1000
Click, 434,271 ;點倉
Sleep, 1200
Sleep, 1000
BOXTOPX = 170
auto_ctrl_go_me()

Sleep, 1200
Send {space}
Sleep, 1000
MouseMove ,363,290 ;點工倉
Sleep, 1000
Click, 363,290 ;點工倉
Sleep, 1200
auto_ctrl_go_box()
Sleep, 1000
Sleep, 1000

Send {space}
Sleep, 1000
MouseMove ,433,270 ;點倉
Sleep, 1000
Click, 433,270 ;點倉
Sleep, 1000
send {Left}
Sleep, 1000
}
auto_ctrl_go_box()
Sleep, 2000

yonote=更換寶石查看
;loadgemlv()

Sleep, 2000
send {Right}
Sleep, 500
send {Right}
Sleep, 500
send {Right}
Sleep, 500
BOXTOPX = 25
auto_ctrl_go_me()
Sleep, 3000
Send {Esc}
Sleep, 2000
Send {space}
Sleep, 1000
Send {space}
Sleep, 1000

Send {S}
Sleep, 1000
Click, 133,119
Sleep, 1000
Click, 290,533
Sleep, 1000
clipboard:=gamename
Sleep, 500
Send ^v
Sleep, 1000
Click, 306,261 ;退公會按鈕
Sleep, 500
Click, 306,261 ;退公會按鈕
Sleep, 1000
Send {enter}
Sleep, 2000
Send {esc}
Sleep, 2000
Send {space}
Sleep, 2000



updatanow()

}




openeb()
{

 poe := "Path of Exile"
	Process, Close ,PathOfExile.exe
	WinClose,%poe%
	Sleep, 1000
IniWrite,true,%A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini ,DISPLAY,framerate_limit_enabled
Sleep, 500
IniWrite,true,%A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini ,DISPLAY,framerate_limit_enabled
Sleep, 500
IniWrite,%redblue%,%A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini ,UI,primordial_being_option_state
Sleep, 500
IniWrite,%man%,%A_Desktop%\yoeb-main\Configuration\%ebmod%\config.ini,general,character_to_use
Sleep, 500

Iniread,setnb,%A_Desktop%\iot\setnb.ini,OutputVar,nob
IniWrite,%setnb%,%A_ScriptDir%\yoset.ini,set,nob
IniWrite,true,%A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini ,DISPLAY,framerate_limit_enabled

runebneed =%A_Desktop%\yoeb-main\ebneed.exe
sleep 1000
Run %runebneed%
sleep 2000


}

auto_ctrl_go_box(){
MEX := METOPX
MEY := METOPY
BOXX := BOXTOPX
BOXY := BOXTOPY
Send {ctrl Down}
LOOP 12
{
LOOP 5
{
txt=""
MouseMove %MEX%, %MEY%, 1
sleep 100
send {c}
sleep 150
txt=%Clipboard%
Needle=Invitation
If InStr(txt,Needle)
{
allbluered++
send {shift down}
Click %MEX%, %MEY%, 1
send {shift up}
}
else
{

if(allbluered==0)
{
txt=%Clipboard%
Needle=Orb of Alteration
	If InStr(txt,Needle)
	{
	StringSplit, a, txt,"`n`r"
	StringSplit, b, a9,"/"
	StringSplit, c, b1,":"
	Alteration:=Alteration+c2
	Click %MEX%, %MEY%, 1
	}
	else
	{
	Click %MEX%, %MEY%, 1
	}

}
else
{
Click %MEX%, %MEY%, 1
}

Clipboard:=""


}
   

MEY := MEY+SPACE
}
MEY := METOPY
MEX := MEX + SPACE
}
Send {ctrl up}
return
}


auto_ctrl_go_me(){
MEX := METOPX
MEY := METOPY
BOXX := BOXTOPX
BOXY := BOXTOPY
Send {ctrl Down}
LOOP 5
{
LOOP 12
{
Click %BOXX%, %BOXY%, 1
BOXY := BOXY+SPACE
}
BOXY := BOXTOPY
BOXX := BOXX + SPACE
}
Send {ctrl up}
return
}


auto_chang_box_me(){
MEX := METOPX
MEY := METOPY
BOXX := BOXTOPX
BOXY := BOXTOPY
{
LOOP 12
{
LOOP 5
{
Click, %MEX%, %MEY% Left, Down
Click, %MEX%, %MEY% Left, Up
sleep 30
Click, %BOXX%, %BOXY%Left, Down
Click, %BOXX%, %BOXY% Left, Up
sleep 30
MEY := MEY+SPACE
BOXY := BOXY+SPACE
}
MEX := MEX + SPACE
BOXX := BOXX +SPACE
MEY := METOPY
BOXY := BOXTOPY
}
}
return
}


auto_chang_box_me2(){
MEX := METOPX
MEY := METOPY
BOXX := BOXTOPX
BOXY := BOXTOPY +146
{
LOOP 12
{
LOOP 5
{
Click, %MEX%, %MEY% Left, Down
Click, %MEX%, %MEY% Left, Up
sleep 30
Click, %BOXX%, %BOXY%Left, Down
Click, %BOXX%, %BOXY% Left, Up
sleep 30
MEY := MEY+SPACE
BOXY := BOXY+SPACE
}
MEX := MEX + SPACE
BOXX := BOXX +SPACE
MEY := METOPY
BOXY := BOXTOPY+146
}
}
return
}


loadgemlv()
{
SetDefaultMouseSpeed,15
sleep 2000
Click,777,367
sleep 1000

MouseMove,530,258
sleep 1000
Click, right, 530,258
sleep 1000
MouseMove,779,480
sleep 1000
Click, 779,480
sleep, 1000
MouseMove,780,481
sleep, 1000
Send ^c
sleep, 1000
Send ^c
ClipWait 5
sleep, 1000
Click, 779,480
sleep 1000
MouseMove,533,254
sleep 1000
Click, 533,254
sleep 1000
lvtxt=%Clipboard%
StringSplit, a, lvtxt,"`n`r"
Needle:="(Max)"
gname :=a5
If InStr(a11, Needle)
{
if(gname=="Empower Support"||gname=="Enlighten Support"||gname=="Summon Ice Golem")
{

}
else
{

clipboard=%a5%
sleep, 1000
runch()
sleep 1000
}
}
Else
{
return
}
return
}


runch()
{
send {esc}
sleep 1000
if(pickok==1)
{
MouseMove,229,283
sleep 1000
Click, 229,283
sleep 2000
}
else
{

MouseMove,304,295
sleep 1000
Click, 304,295
sleep 2000
}

MouseMove,212,88
sleep 500
Click, 211,88
sleep 500
Click, 212,88
sleep 1000
MouseMove,98,107
sleep 500
Click, 98,107
sleep 500
Click, 98,107
sleep 500
MouseMove,92,295
sleep 500
Click, 92,295
sleep 500
Click, 92,295
sleep 50000

MouseMove,406,291
sleep 1000
Click, 406,291
sleep 1000
send {Space}
sleep 1000
MouseMove,406,291
sleep 1000
Click, 406,291
sleep 1000
send {Space}

MouseMove,350,43
sleep 1000
Click, 350,43
sleep 5000
send {Space}
sleep 500
send {Space}
sleep 1000

MouseMove,383,29 ;npc
sleep 1000
Click, 383,29,
sleep 5000

PixelSearch, Px, Py, 438,30, 440,32,0x222636,5, Fast

MouseMove,377,151
sleep 1000
Click, 377,151
sleep 3000


MouseMove,508,84  ;切換五企業
sleep 1000
Click, 508,84
sleep 3000


MouseMove,266,485  ;輸入框
sleep 1000
Click, 266,485
sleep 1000
Click, 266,485
sleep 2000
Send ^v
sleep 1000
Click, 115,145
sleep 5000
while(lookGEM!=1)
{
PixelSearch, Px, Py, 43,154, 392,474,0x77B4E7,5, Fast
if ErrorLevel
{
sleep 500
send {Right}
sleep 5000
errorgem++
if(errorgem>6)
{
lookGEM=1
}
}
else
{
gemx:=px+12
gemy:=py+12
MEX := METOPX
MEY := METOPY
runchgux()

send {Space}
sleep 500
send {Space}
sleep 1000

clipboard=/hideout
Send {enter}
Sleep, 1000
Send ^v
Sleep, 1000
Send {enter}
Sleep, 40000

MouseMove,539,293  ;輸入框
sleep 500
Click, 539,293
sleep 2000

Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500
send {Left}
Sleep, 500

Sleep, 2000
mousemove 349, 314
sleep , 700
Click, 349, 314 Right
Sleep, 700
mousemove 461, 365
sleep 700
Click, 461, 365 Left
sleep 500
check21()
Sleep, 200
mousemove 346, 344
sleep , 700
Click, 346, 344 Right
Sleep, 700
mousemove 461, 397
sleep 700
Click, 461, 397 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 378
sleep , 700
Click, 351, 378 Right
Sleep, 700
mousemove 452, 426
sleep 700
Click, 452, 426 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 406
sleep , 700
Click, 351, 406 Right
Sleep, 700
mousemove 457, 455
sleep 700
Click, 457, 455 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 430
sleep , 700
Click, 351, 430 Right
Sleep, 700
mousemove 459, 486
sleep 700
Click, 459, 486 Left
sleep 500
check21()
Sleep, 200
mousemove 346, 312
sleep , 700
Click, 346, 312 Right
Sleep, 700
mousemove 488, 368
sleep 700
Click, 488, 368 Left
sleep 500
check21()
Sleep, 200
mousemove 347, 342
sleep , 700
Click, 347, 342 Right
Sleep, 700
mousemove 484, 396
sleep 700
Click, 484, 396 Left
sleep 500
check21()
Sleep, 200
mousemove 345, 373
sleep , 700
Click, 345, 373 Right
Sleep, 700
mousemove 484, 427
sleep 700
Click, 484, 427 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 398
sleep , 700
Click, 351, 398 Right
Sleep, 700
mousemove 485, 454
sleep 700
Click, 485, 454 Left
sleep 500
check21()
Sleep, 200
mousemove 348, 428
sleep , 700
Click, 348, 428 Right
Sleep, 700
mousemove 481, 482
sleep 700
Click, 481, 482 Left
sleep 500
check21()
Sleep, 200
mousemove 349, 320
sleep , 700
Click, 349, 320 Right
Sleep, 700
mousemove 516, 368
sleep 700
Click, 516, 368 Left
sleep 500
check21()
Sleep, 200
mousemove 353, 344
sleep , 700
Click, 353, 344 Right
Sleep, 700
mousemove 516, 396
sleep 700
Click, 516, 396 Left
sleep 500
check21()
Sleep, 200
mousemove 347, 373
sleep , 700
Click, 347, 373 Right
Sleep, 700
mousemove 516, 424
sleep 700
Click, 516, 424 Left
sleep 500
check21()
Sleep, 200
mousemove 348, 404
sleep , 700
Click, 348, 404 Right
Sleep, 700
mousemove 516, 455
sleep 700
Click, 516, 455 Left
sleep 500
check21()
Sleep, 200
mousemove 343, 431
sleep , 700
Click, 343, 431 Right
Sleep, 700
mousemove 517, 482
sleep 700
Click, 517, 482 Left
sleep 500
check21()
Sleep, 200
mousemove 349, 319
sleep , 700
Click, 349, 319 Right
Sleep, 700
mousemove 546, 368
sleep 700
Click, 546, 368 Left
sleep 500
check21()
Sleep, 200
mousemove 357, 347
sleep , 700
Click, 357, 347 Right
Sleep, 700
mousemove 548, 392
sleep 700
Click, 548, 392 Left
sleep 500
check21()
Sleep, 200
mousemove 360, 373
sleep , 700
Click, 360, 373 Right
Sleep, 700
mousemove 546, 426
sleep 700
Click, 546, 426 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 400
sleep , 700
Click, 351, 400 Right
Sleep, 700
mousemove 543, 452
sleep 700
Click, 543, 452 Left
sleep 500
check21()
Sleep, 200
mousemove 351, 429
sleep , 700
Click, 351, 429 Right
Sleep, 700
mousemove 548, 481
sleep 700
Click, 548, 481 Left
sleep 500
check21()
Sleep, 2000
lookGEM=1
}
}
return
}


check21()
{
Send ^c
sleep, 1000
Send ^c
sleep, 1000
Send ^c
sleep, 1000
Send ^c
sleep, 1000
Send ^c
sleep, 1000
Send ^c
sleep, 1000
Send ^c
ClipWait 5
lvtxt=%Clipboard%
StringSplit, a, lvtxt,"`n`r"
Needle:="21"
If InStr(a11, Needle)
{
sleep, 500
Send {ctrl Down}
sleep, 500
Click
sleep, 500
Send {ctrl up}
sleep, 500
}
Clipboard:=""
}


runchgux()
{
txttemp=頭
replaceGEM(602,95)
replaceGEM(631,95)
replaceGEM(631,124)
replaceGEM(603,129)


txttemp=手
replaceGEM(531,228)
replaceGEM(560,228)
replaceGEM(529,255)
replaceGEM(560,254)

txttemp=腳
replaceGEM(674,258)
replaceGEM(707,254)
replaceGEM(702,229)
replaceGEM(673,229)

txttemp=直立3五器1
replaceGEM(502,117)
replaceGEM(502,145)
replaceGEM(503,176)

txttemp=直立3五器2
replaceGEM(733,120)
replaceGEM(732,148)
replaceGEM(732,176)


mousemove 509,82
sleep 1000
Click,509,82
sleep 1000
return
}


replaceGEM(gX,gY)
{
sleep 1000
mousemove %gemx%,%gemy%
sleep 1000
Click,%gemx%,%gemy%
sleep 1000
mousemove %gx%,%gy%
sleep 1000
Click,%gx%,%gy%
sleep 1000
mousemove %MEX%, %MEY%
sleep 1000
Click %MEX%, %MEY%
sleep 1000
MEY := MEY+SPACE
if (MEY>500)
{
MEY := METOPY
MEX := MEX + SPACE
}
return
}

ChangeResolution(Screen_Width := 1920, Screen_Height := 1080, Color_Depth := 32)
{
	VarSetCapacity(Device_Mode,156,0)
	NumPut(156,Device_Mode,36) 
	DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&Device_Mode )
	NumPut(0x5c0000,Device_Mode,40) 
	NumPut(Color_Depth,Device_Mode,104)
	NumPut(Screen_Width,Device_Mode,108)
	NumPut(Screen_Height,Device_Mode,112)
	Return DllCall( "ChangeDisplaySettingsA", UInt,&Device_Mode, UInt,0 )
}
Return 


openabcd()
{
Process, Close ,Garena.exe
WinClose,%poe%
Process, Close ,PathOfExile.exe
sleep 1000

IniWrite, %abcdname%, %A_ScriptDir%\ABCD\data.ini, Edit, 132|1009
IniWrite, %abcdpass%, %A_ScriptDir%\ABCD\data.ini, Edit, 132|1007




IniWrite, %abcdiot%, %A_ScriptDir%\ABCD\setting.ini, 通用设置, 中控发号


IniWrite, %gamename%, %A_ScriptDir%\ABCD\setting.ini, 账号0, 账号
sleep 500
IniWrite, %gamepass%, %A_ScriptDir%\ABCD\setting.ini, 账号0, 密码
sleep 500
IniWrite, %abcdmod%, %A_ScriptDir%\ABCD\setting.ini, 账号0, 脚本名
sleep 500
FileDelete, %A_MyDocuments%\My Games\Path of Exile\garena_tw_production_Config.ini
Filecopy ,%A_ScriptDir%\ABCD\garena_tw_production_Config.ini,%A_MyDocuments%\My Games\Path of Exile\,1
sleep 2000
IniWrite, 6670, %A_ScriptDir%\ABCD\setting.ini, 通用设置, 中控端口
sleep 1000
run %A_ScriptDir%\ABCD\openabcd.bat
sleep 2000
}


endrestime()
{


if(afk==1)
{
exit
}

if(ebonly==0)
{
exit
}



loop
{
ttxt:="#"
StringSplit, ptime, givetimetxt ,%ttxt%
b:=ptime1*60
b2:=ptime2*60
b3:=ptime3*60

allmin:=A_Hour*60+A_Min

if(allmin<b)
{
listtime:=b-allmin
ctime:=b/60
}
if(allmin>b&&allmin<b2)
{
listtime:=b2-allmin
ctime:=b2/60
}
if(allmin>b2&&allmin<b3)
{
listtime:=b3-allmin
ctime:=b3/60
}
if(allmin>b3)
{
listtime:=b+1440-allmin
ctime:=b/60

}

Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob
cmin:=setnb*2
if(cmin>59)
{
cmin:=cmin-60
ctime++
}

if(cmin>59)
{
cmin:=cmin-60
ctime++
}

ctime:=Round(ctime)
ToolTip,%ctime%:%cmin% , -50, -50

listtime:=listtime*60000
sleep listtime

if(runnb==2&&ebonly<5)
{

	if FileExist("C:\Users\Administrator\Desktop\yoeb-main\ABCD\temp.ini")
	{
	FileRead, Outputar, %A_ScriptDir%\ABCD\temp.ini
	ttxt:="="
	StringSplit, pime, Outputar ,%ttxt%
	toplv := SubStr(pime2, 1, 2)
		if(toplv>69)
		{
		run %A_ScriptDir%\rebot.bat
		}
	}
	else
	{
	run %A_ScriptDir%\rebot.bat
	}
	
}
else
{
IniWrite,0,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,onlyeb
IniWrite,120,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,restime
run %A_ScriptDir%\rebot.bat
}


sleep 3500000
}

}


updatanow()
{



;delvt:=alls/dad
;SetFormat, float, .0
;allnow:="%E5%B4%87("Exalted*(86400/alls)")%E6%B7%B7("Chaos*(86400/alls)")%E6%94%B9("Alteration*(86400/alls)")%E5%8C%A0("Jeweller*(86400/alls)")%E5%B9%BB("Chromatic*(86400/alls)")%E8%AC%99("Regal*(86400/alls)")%E8%AC%99("errloop
;allnow2:="%E5%9C%96%E6%95%B8"skin"%E6%AD%BB"dad")%E5%88%B7%E5%9C%96%E6%99%82("+alls/skin+")%E9%A0%90%E4%BC%B0%E7%A5%A8("86400/(alls/skin)")%E5%AF%A6%E7%A5%A8("testalltwoc")%E5%9C%96%E9%87%8F("nowmapall

Iniread,rebackkey,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,rebackkey
Iniread,setnb,C:\Users\Administrator\Desktop\iot\setnb.ini,OutputVar,nob

if(allbluered==0)
{
allbluered:=Alteration
}

dayatxt=https://maker.ifttt.com/trigger/yolist/with/key/%rebackkey%?value1=C%setnb%&value2=%allbluered%
WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
WinHttp.Open("GET", dayatxt, false)
WinHttp.Send()


;timeh1:=Floor(alls/3600)
;timemin1:=Mod(Floor(alls/60),60)

a:="%E7%B4%AF%E7%A9%8D"
b:="%E6%99%82"
c:="%E5%88%86"
;nwotime=%a%%timeh1%%b%%timemin1%%c%
;FormatTime, TheDate,, MM/dd HH:mm

;dayatxt=https://maker.ifttt.com/trigger/yolist/with/key/%rebackkey%?value1=E%setnb%&value2=%nwotime%&value3=%TheDate%
;WinHttp := ComObjCreate("MSXML2.XMLHTTP.6.0")
;WinHttp.Open("GET", dayatxt, false)
;WinHttp.Send()

}
return