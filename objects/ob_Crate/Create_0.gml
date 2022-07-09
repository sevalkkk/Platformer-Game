/// @desc create wall 

myWall = instance_create_layer(x,y,layer,ob_Wall);
with(myWall)
{
	visible = false;
	image_xscale= other.sprite_width / sprite_width;
	image_yscale= other.sprite_height /sprite_height;
}
