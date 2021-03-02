leftMouse = mouse_check_button_pressed(mb_left);

x = oPlayer.x;
y = oPlayer.y;

while(!leftMouse)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}

if(leftMouse)
{
	var inst = instance_create_layer(x,y,layer,oLaser);
	inst.direction = oCannon.image_angle;
}