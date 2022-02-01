/// @description Insert description here
// You can write your code in this editor

//if key is pressed then right = 1, otherwise right = 0
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

jump = keyboard_check_pressed(vk_space);

xDirection = right - left;

xVector = xSpeed * xDirection;
yVector = yVector + grv; 


//check to see if the move is legal and does not hit a wall. 
//If it does hit a wall then only move one pixel at a time 
//until you hit the wall. 
if(place_meeting(x +xVector, y, oWall))
{
	// ! means "not"
	// xDirection is just one square at a time, it is only ever 1,-1 or 0.
	while(!place_meeting(x + xDirection, y, oWall))
	{
	//move one pixel
	x = x + xDirection;
	}
	xVector = 0;
}
//now we are safe to move the entire amount of xVector (4 pixels)
x = x + xVector;


if(place_meeting(x, y +yVector, oWall))
{
	// ! means "not"
	// sign(yVector) is just one square at a time, it is only ever 1,-1 or 0.
	while(!place_meeting(x, y + sign(yVector), oWall))
	{
	//move one pixel
	y = y + sign(yVector);
	}
	yVector = 0;
}
y = y + yVector;

//jump if we are on the ground and jump was pressed
if(place_meeting(x, y+1, oWall)  and (jump))
{
yVector = jumpForce;

}

if(y>= room_height)
{
	PlayerDeath();
}

