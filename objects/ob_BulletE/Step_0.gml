/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);



if(place_meeting(x,y,ob_Wall)) && (image_index !=0) 
{
   while(place_meeting(x,y,ob_Wall))
   {
     x -= lengthdir_x(1,direction);
     y -= lengthdir_y(1,direction);
   }
   spd = 10;
   instance_change(ob_HitSpark1,true);
}

