//scr_addToScore(type)
//type 1 == collision with good shit
//type 2 == dodge bad shit
//type 3 == collision with power ups 

type=argument0; 

switch(type)
{
case(1):
{
objControlTemp.roundScore+=5; 
}
break;
case(2):
{
objControlTemp.roundScore+=1; 
}
break; 
case(3):
{
objControlTemp.roundScore+=20; 
}
break;
} 
