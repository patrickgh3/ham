//scr_spawnObstacle(type,color,myHSpeed,Vspeed,xLocation);
ySpawn=view_yview[0]-32;
setType=argument0;
setColor=argument1; 
setHSpeed=argument2; 
setVSpeed=argument3; 
xLoc=argument4;
switch(setType)
{
case(0):
  {
  newObst=instance_create(xLoc, ySpawn, objObstacleOne);   
  newObst.myHSpeed=setHSpeed; 
  newObst.myVSpeed=setVSpeed; 
  newObst.myColor=setColor; 
  break; 
  } 
case(1):
  {
  newObst=instance_create(xLoc, ySpawn, objObstacleTwo);   
  newObst.myHSpeed=setHSpeed; 
  newObst.myVSpeed=setVSpeed; 
  newObst.myColor=setColor; 
  break; 
  } 
}  
