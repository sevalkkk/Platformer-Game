x = ob_Player.x;
y = ob_Player.y+7;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay = firingDelay -1;
recoil= max(0,recoil-1);

if(mouse_check_button(mb_left)) && (firingDelay < 0)
{
	recoil=4;
	firingDelay =5;
	ScreenShake(2,10);
	audio_play_sound(sn_shot,5,false);
	with (instance_create_layer(x,y,"Bullet",ob_Bullet))
	{
		spd = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
	with(ob_Player)
	{
        gunpickx=lengthdir_x(1.5,other.image_angle-180);
		gunpicky=lengthdir_y(1,other.image_angle-180);
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if(image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	
}
else image_yscale = 1;


