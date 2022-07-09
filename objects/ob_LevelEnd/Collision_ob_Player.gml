/// move to next room

with(ob_Player)
{
	if(hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
	
}
