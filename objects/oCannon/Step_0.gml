leftMouse = mouse_check_button_pressed(mb_left);

x = oPlayer.x;
y = oPlayer.y;

if(!leftMouse)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}

var inst = oLaser;

if(leftMouse)
{
	if(delay <= 0)
	{
		inst = instance_create_layer(x,y,layer,oLaser);
		inst.image_angle = oCannon.image_angle;
		delay = ogDelay;
	}
	alarm[0] = laserSpeed;
}

if(alarm[0] <= 0)
{
	instance_destroy(inst)	
	delay--;
}
