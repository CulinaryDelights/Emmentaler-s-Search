if(instance_exists(follow))
{
	x = lerp(x,follow.x,camDelay);
	y = lerp(y,follow.y,camDelay);
}

x = clamp(x,viewWidthHalf,room_width - viewWidthHalf);
y = clamp(y,viewHeightHalf,room_height - viewHeightHalf);

x += random_range(shakeRemain,-shakeRemain)
y += random_range(shakeRemain,-shakeRemain)
shakeRemain = max(0,shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam,x - viewWidthHalf,y - viewHeightHalf);