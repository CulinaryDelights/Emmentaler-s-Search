event_inherited();

keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);

var move = keyRight - keyLeft;

hsp = wsp * move;

if(place_meeting(x,y + 1,oWall) && keyJump)
{
	vsp = -8;		
}

if(place_meeting(x,y,oEnemy))
{
	hp -= other.hp;
	hit = true;
}
else
{
	hit = false;
}

if(hit && !invincible)
{
	invincible = true;
	alarm[0] = 60;
}

if(hp <= 0)
{
	instance_destroy();
}