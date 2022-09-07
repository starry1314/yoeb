J::
if(test==0)
{
test=1
send {2}
return
}
if(test==1)
{
test=0
send {3}
return
}
*E::
send {E}
sleep 500
send {R}