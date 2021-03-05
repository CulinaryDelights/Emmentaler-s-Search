///@function screen_shake(magnitude,frames)

function screen_shake(magnitude,frames){
	with(oCamera)
	{
		if(magnitude > shakeRemain)
		{
			shakeRemain = magnitude;
			shakeMagnitude = magnitude;
			shakeLength = frames;
		}
	}
}