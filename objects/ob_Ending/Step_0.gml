//move player towards center
 layer_x("TitleAssets",min(layer_get_x("TitleAssets")+1,-16));
 //progress text
 letters+=spd;
 text=string_copy(endtext[currentline],1,floor(letters));
 
 
 //next line
 if(letters>=length) && (keyboard_check_pressed(vk_anykey))
 {
    if(currentline+1 ==array_length(endtext))
	{
	    SlideTransition(TRANS_MODE.RESTART);
	
	}
	else
	{
	
	    currentline++;
		letters=0;
		length = string_length(endtext[currentline]);
	}
 
 
 
 
 
 }


