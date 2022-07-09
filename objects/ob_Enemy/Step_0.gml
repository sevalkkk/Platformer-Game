
vsp= vsp+grv;

// dont walk of edges
if((grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,ob_Wall)))
{
	hsp= -hsp;
	
	
}

//horizontal collision
if(place_meeting(x+hsp,y,ob_Wall))
{
	while(!place_meeting(x+sign(hsp),y,ob_Wall))
	{
		x = x+ sign(hsp);
	}
	
	hsp=-hsp;
	
}
x= x + hsp;

//vertical collision
if(place_meeting(x,y+vsp,ob_Wall))
{
	while(!place_meeting(x,y+sign(vsp),ob_Wall))
	{
		y = y+ sign(vsp);
	}
	
	vsp=0;
	
}
y= y + vsp;

//animation
if(!place_meeting(x,y+1,ob_Wall))
{
	grounded= false;
	sprite_index = spr_EnemyJump;
	image_speed= 0;
    if(sign(vsp)>0)
	{
		image_index= 0;
		
	}
	else image_index=1;
	
}

else
{
	grounded =true;
	image_speed = 1;
	if(hsp==0)
	{
		sprite_index = spr_Enemy;
	}
	else
	{
		sprite_index = spr_EnemyRun;
	}
}

if(hsp!=0) image_xscale = 2*sign(hsp)* size;
image_yscale = 2*size;


