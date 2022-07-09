if(instance_exists(ob_Player))
{
	if (point_in_circle(ob_Player.x,ob_Player.y,x,y,64) && (!instance_exists(ob_Text)))
	{
	 nearby=true;
	  if(keyboard_check_pressed(ord("W")))
	  {
		with(instance_create_layer(x,y-64,layer,ob_Text))
		{
		text = other.text;
		length = string_length(text);
	
		}
		with(ob_Camera)
		{
		follow= other.id;
		}
	  }
	
	}else nearby=false;
}
