gunsprite= layer_sprite_get_id("TitleAssets","g_Gun");
if(global.hasgun==true)
{
   if (global.bigkills >0) || (global.kills >0) 
   {
	   endtext[0] = "And on this day our hero had slain " +string(global.kills) + "people";
	   if(global.kills==1) endtext[0]= "And on this day our hero killed a guy for a reason..."
   
	   endtext[1] = "hero killed enemies.";
	   endtext[2] = "hero killed enemies";
	   endtext[3] = "hero killed enemies";
	   endtext[4] = "hero killed enemies";
	   endtext[5] = "hero killed enemies";
	   endtext[6] = "the end";
	   
    }
}
else
{
   layer_sprite_destroy(gunsprite);
   endtext[0] = "hero killed enemies.";
   endtext[1] = "hero killed enemies";
   endtext[2] = "hero killed enemies";
   endtext[3] = "hero killed enemies";
   endtext[4] = "the end";
   



}
spd =0.5;
letters=0;
currentline =0;
length = string_length(endtext[currentline]);
text="";
