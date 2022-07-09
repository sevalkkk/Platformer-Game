//get player input
if(hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
	key_right= keyboard_check(vk_right)|| keyboard_check(ord("D")) ;
	key_jump= keyboard_check_pressed(vk_space);
}
else 
{
	key_right = 0;
	key_left= 0;
	key_jump = 0;
}
	#region //calculate movement
	var move= key_right - key_left;

	hsp = (move * walksp)+ gunkickx;
	

	vsp=(vsp+grv) +gunkicky;
	gunkicky=0;
	
    
	//jumping
	canjump -=1;
	if(canjump >0)  
	{
	
	    if(key_jump) || (keyboard_check(vk_up))
		{
			vsp = -7;
		    canjump=0;
		}
	}
    #endregion
	//horizontal collision
	if(place_meeting(x+hsp,y,ob_Wall))
	{
		while(!place_meeting(x+sign(hsp),y,ob_Wall))
		{
			x = x+ sign(hsp);
		}
		hsp=0;
	
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

	#region //animation
	var aimside = sign(mouse_x-x)*2;
	if(aimside!=0) image_xscale= aimside;
	if(!place_meeting(x,y+1,ob_Wall))
	{
		sprite_index = spr_PlayerJump;
		image_speed= 0;
	    if(sign(vsp)>0)
		{
			image_index= 1;
		
		}
		else image_index=0;
	
	}

	else
	{
		if(sprite_index == spr_PlayerJump)
		{
		  repeat(5)
		  {
		      with(instance_create_layer(x,bbox_bottom,"Bullet" , ob_Dust))
			  {
			    vsp=0;
			  }
		  
		  }
		}
		canjump=10;
		image_speed = 1;
		if(hsp==0)
		{
			sprite_index = spr_Player;
			if(keyboard_check(ord("S")))
			{
				sprite_index = spr_PlayerSit;
				
		    }
		    else
		    {
			sprite_index = spr_PlayerRun;
			if(aimside != sign(hsp)) sprite_index=spr_PlayerRunBack;
		    }
	   }
	#endregion
	}

