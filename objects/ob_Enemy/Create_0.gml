killtextscale = 1;

if(hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",ob_GunEnemy);
	with(mygun)
	{
		owner = other.id;
	}
}
else mygun=noone;
