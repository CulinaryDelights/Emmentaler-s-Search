keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);

var move = keyRight - keyLeft;

hsp = wsp * move;

vsp += grv;

if(place_meeting(x,y + 1,oWall && keyJump))
{
	vsp = -8;
}

if(place_meeting(x + hsp,y,oWall))
{
	while(!place_meeting(x + sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}	
	hsp = 0;
}

x += hsp;

if(place_meeting(x,y + vsp,oWall))
{
	while(!place_meeting(x,y + sign(vsp),oWall))
	{
		y += sign(vsp);
	}	
	vsp = 0;
}

y += vsp;