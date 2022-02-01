// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHurt(){
if (!other.isInvincible)
{
	//become invincible which triggers timer
	other.isInvincible = true;
	
	
	
	//loose one hp
	other.hp -=1;
	
	//check to see if we have any health remaining
	if(other.hp <1)
	{
		//if no health remaining, die
		EnemyDeath();
	}
}


}


function EnemyDeath()
{
	if (random_range(0,10)>4)
	{
		//create coin
		instance_create_layer(other.x,other.y,"Instances",oCoin);
	}
	
	//destroy enemy
	instance_destroy(other);
}