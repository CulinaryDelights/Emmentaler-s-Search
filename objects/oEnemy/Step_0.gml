event_perform_object(oCollisionObject,ev_step,0)

if(place_meeting(x,y + 1,oWall))
{
	vsp = -5;	
}

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

if(touchingLaser && !invincible) {
	hp -= 25;
	invincible = true;
	alarm[0] = 30;
}

if(hp <= 0)
{
	instance_destroy();	
}

touchingLaser = false;