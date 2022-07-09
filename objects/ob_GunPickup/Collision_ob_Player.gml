/// @desc equip Gun

global.hasgun = true;
with(instance_create_layer(ob_Player.x,ob_Player.y,"Gun",ob_Gun))
{
	sprite_index = spr_GunPickup;
}
instance_destroy();

