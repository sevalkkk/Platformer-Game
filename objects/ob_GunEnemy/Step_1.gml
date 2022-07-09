x= owner.x;
y= owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(ob_Player))
{
   if(ob_Player.x <x) image_yscale = -image_yscale ;
   if(point_distance(ob_Player.x,ob_Player.y,x,y) <600)
   {
     image_angle = point_direction(x,y,ob_Player.x,ob_Player.y);
	 countdown --;
	 if(!collision_line(x,y,ob_Player.x,ob_Player.y,ob_Wall,false,false))
	 {
	    if(countdown == 0)
		{
		    with (instance_create_layer(x,y,"Bullet",ob_BulletE))
			{
				spd = 10;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
				other.countdown = other.countdownrate;
		    }
		}
	 	 
	 }
   
   
   
   }



}
