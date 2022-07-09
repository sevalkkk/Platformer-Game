if(hp <=0)
{
	with(instance_create_layer(x,y,layer,ob_DeadE))
	{
		direction= other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if(sign(hsp) !=0)
		{
			image_xscale = 2*sign(hsp)*other.size;
			image_yscale = 2* other.size;
			
		}
	
		
	}
	with(mygun) instance_destroy();
	if(instance_exists(ob_Player))
	{
		global.kills++;
		global.killsthisroom++;
		with(ob_Game) killtextscale= 2;
	}
	instance_destroy();
}
