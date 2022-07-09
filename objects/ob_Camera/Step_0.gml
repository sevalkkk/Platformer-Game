
// update destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index== ob_DeadP)
	{
	x=xTo;
	y=yTo;
		
	}
	
}
// update object position
x += (xTo - x) /15;
y += (yTo - y)/15;
/// keep camera center inside room
x= clamp(x,view_w_half+buff,room_width -view_w_half-buff);
y= clamp(y,view_h_half+buff,room_height -view_h_half-buff);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(room!= RoomMenu) && (room!= RoomEnding)
{
	layer_x("Background",x/2);
	layer_y("Background",y-450);
	
}

/// follow backgorund
 if(layer_exists("cloud"))
 {
	layer_x ("cloud",x/10);
	
}

if(layer_exists("green"))
 {
	layer_x ("green",x/20);
	
}

