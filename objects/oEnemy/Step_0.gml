event_perform_object(oCollisionObject,ev_step,0)

if(place_meeting(x + sign(DIR),y,oWall))
{
	if(DIR == DIR.right)
	{
		DIR = DIR.left;
		hsp = DIR.left;
	}
	else
	{
		DIR = DIR.right;
		hsp = DIR.right;
	}
}

show_debug_message(sign(DIR))