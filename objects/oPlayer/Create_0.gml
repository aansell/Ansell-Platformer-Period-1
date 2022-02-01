/// @description Insert description here
// You can write your code in this editor

global.points = 0;

hp = 5;
isInvincible = false;

//xSpeed is how many pixels the player will move each frame
xSpeed = 4;

//what direction the player is moving. 1 = to the right, -1 = to the left, 0 = not moving
xDirection = 0;

//multiply speed * direction
xVector = xSpeed * xDirection;

//gravity
grv = .3;
jumpForce = -10;

yVector = 0;
