//scr_spawnObstacle(type,color,myHSpeed,Vspeed,xLocation,size);
ySpawn=view_yview[0]-32;
setType=argument0;
setColor=argument1; 
setHSpeed=argument2; 
setVSpeed=argument3; 
xLoc=argument4;
sizeAugment=argument5; 
switch(setType)
{
case(0):
  {
  newObst=instance_create(xLoc, ySpawn, objObstacleOne);
  newObst.sprite_index = sprSatellite
  break; 
  } 
case(1):
  {
  newObst=instance_create(xLoc, ySpawn, objObstacleTwo);
  newObst.sprite_index = choose(sprAsteroid1, sprAsteroid2, sprAsteroid3)
  newObst.image_speed = 0
  break; 
  } 
}  
newObst.myHSpeed=setHSpeed; 
newObst.myVSpeed=setVSpeed; 
newObst.myColor=setColor; 
newObst.image_xscale=sizeAugment; 
newObst.image_yscale=sizeAugment;

newObst.image_xscale *= choose(1, -1)
newObst.sprite_index = choose(sprAsteroid1, sprAsteroid2, sprAsteroid3)
newObst.image_index= choose(0,1,2,3); 
newObst.image_speed = 0
