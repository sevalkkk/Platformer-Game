
function KillPlayer()
{
	with(ob_Gun) instance_destroy();
	instance_change(ob_DeadP,true);


	direction= point_direction(other.x,other.y,x,y);
	hsp= lengthdir_x(6,direction);
	vsp= lengthdir_y(4,direction)-2;
	if(sign(hsp)!=0) image_xscale= 2*sign(hsp);


    global.kills-= global.killsthisroom;
	global.bigkills-=global.killsthisroom;
}
