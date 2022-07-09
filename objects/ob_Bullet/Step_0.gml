/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


if(place_meeting(x,y,ob_ShootableP))
{

	with (instance_place(x,y,ob_ShootableP))
	{
		hp--;
		flash = 3;
		hitfrom=other.direction;
	}
    instance_destroy();
}

if(place_meeting(x,y,ob_Wall)) && (image_index !=0) 
{
   while(place_meeting(x,y,ob_Wall))
   {
     x -= lengthdir_x(1,direction);
     y -= lengthdir_y(1,direction);
   }
   spd = 0;
   instance_change(ob_HitSpark1,true);
   layer_add_instance("Tiles",id);
   depth+=1;
   
}

