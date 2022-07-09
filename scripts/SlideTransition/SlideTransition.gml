/// slide transition(mode,targetroom)
/// mode sets transition mode between next, restart and goto.
/// target sets target room when using the goto mode.
function SlideTransition(_mode,_target = noone)
{
	with(ob_Transition)
	{
		mode = _mode;
		target = _target;	

	}
}
