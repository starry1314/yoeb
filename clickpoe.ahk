; #Include <FindText>
loop
{
sleep, 5000
t1:=A_TickCount, Text:=X:=Y:=""

Text:="|<>**50$69.qB000A7rv3OypDyE0UwtsD66d0T407XbDRsl80T00zzvtt69U0g07zzNFkpC00k0k1v002cw0C47zzTzsx3k3AETxu086c7UBs07U000l0ADzUzzxzz680kj77yzjzsl062ESk0Ak07u0QMkrzzYTsr02lXz0w2rz6s0PWQk7Uak8z0vCDMzzwa17s3Mknjxcazsr033wpUswrz6s08CSbzza08z0387hzs0nz6M00Thk0r6zslzzzz+xywq167zzbvLivakA"

if (ok:=FindText(X, Y, 585-150000, 391-150000, 585+150000, 391+150000, 0, 0, Text))
{
   FindText().Click(X, Y, "L")
  
}
}