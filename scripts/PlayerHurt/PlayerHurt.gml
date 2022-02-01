// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt(){
//check to see if we are currently invincible
if (!oPlayer.isInvincible)
{
	//become invincible
	isInvincible = true;
	//set alarm to become not invincible in 2 seconds
	alarm_set(0,2*room_speed);
	
	//loose one hp
	oPlayer.hp -=1;
	
	//check to see if we have any health remaining
	if(oPlayer.hp <1)
	{
		//if no health remaining, die
		PlayerDeath();
	}
}


}


function PlayerDeath()
{
	//create global.live = 3; in HUD
	//global.lives -=1;
	room_restart()
}