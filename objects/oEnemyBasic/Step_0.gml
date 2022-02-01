/// @description Insert description here
// You can write your code in this editor
if (isInvincible)
{
	//each step (1/60th of a second)
	//subtract 1/60th of a second from invTimer
	invTimer -=1/room_speed;
	if(invTimer<0)
	{
		isInvincible = false;
		//reset timer for next time
		invTimer = 1;
	}
}