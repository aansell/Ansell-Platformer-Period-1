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



//each step (1/60th of a second)
//subtract 1/60th of a second from invTimer
shootTimer -=1/room_speed;
if(shootTimer<0)
{
	var bullet = instance_create_layer(x,y,"Instances",oEnemyProjectile);
	with (bullet)
    {
		speed = 6;
		direction = point_direction(x,y,oPlayer.x,oPlayer.y);
    }
	//reset timer for next time
	shootTimer = 2;
}
