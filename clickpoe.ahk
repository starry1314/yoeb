; #Include <FindText>
loop
{
sleep, 1000
t1:=A_TickCount, Text:=X:=Y:=""
Text:="|<>**50$30.zs3zzkDuzRzE/PNTTjxTMPjs1TPyzxMPPTxTTHs1HRnTxyCnM1nQuzxzHSmx1DamV1wzyzU"
if (ok:=FindText(X, Y, 646-150000, 482-150000, 646+150000, 482+150000, 0, 0, Text))
{
FindText().Click(X, Y, "L")
sleep, 1000
mousemove,542,40,speed,R
click
EXITAPP
}
}