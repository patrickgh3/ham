//scr_spawnScenary(type,xSpawnLoc, setHSpeed, setVSpeed, sizeAugment, shadeAugment); 
ySpawn=view_yview[0]-32;
//args 
type=argument0; 
xSpawn=argument1; 
setHSpeed=argument2; 
setVSpeed=argument3; 
sizeAugment=argument4; 
shadeAugment=argument5; 
switch(type)
{
case(0):
{
myScen=instance_create(xSpawn, ySpawn, objStar);  
}
break;
case(1):
{
}
break;  
//TODO more scenary objects 
}

myScen.myVSpeed=setVSpeed;
myScen.myHSpeed=setHSpeed; 
myScen.image_xscale=sizeAugment; 
myScen.image_yscale=sizeAugment; 

if (shadeAugment==1)
{
myScen.image_index= 1;
}

