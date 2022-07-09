/// @desc draw score

if(room!= RoomMenu) && (instance_exists(ob_Player)) 
{
	if  (global.kills >0) || (global.bigkills >0) 
	{
		killtextscale = max(killtextscale * 0.95,1);
	//DrawSetText(c_black,fMenu,fa_right,fa_top);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text_transformed((display_get_gui_width()/2)-300,30,string(global.kills)+ "\n enemy has been killed. ",killtextscale,killtextscale,0);
		draw_set_color(c_black);
		draw_text_transformed((display_get_gui_width()/2)-300,32,string(global.kills)+ "\n enemy has been killed. ",killtextscale,killtextscale,0);
		draw_text_transformed((display_get_gui_width()/2)+300,30,string(global.bigkills)+ "\n boss enemy has been killed. ",killtextscale,killtextscale,0);
		draw_set_color(c_black);
		draw_text_transformed((display_get_gui_width()/2)+300,32,string(global.bigkills)+ "\n boss enemy has been killed. ",killtextscale,killtextscale,0);
	}
	if (global.score > 0)
	{
		 scoretextscale = max(scoretextscale * 0.95,1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text_transformed((display_get_gui_width()/2)-300,100,string(global.score)+ "\n golden picked up.. ",killtextscale,killtextscale,0);
		draw_set_color(c_black);
		
	}
	
	
	
}
