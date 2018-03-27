
if(in_helicopter == false and !instance_exists(obj_inventory)) {
if keyboard_check(ord("W")){
        playerVSpeed -= playerSpeedIncrement;
       i_speed=0.15;
		leg_direction = point_direction(x,y,x+playerHSpeed, y+playerVSpeed);
}
if keyboard_check(ord("A")){
        playerHSpeed -= playerSpeedIncrement;
        i_speed=0.3;
		leg_direction = point_direction(x,y,x+playerHSpeed, y+playerVSpeed);
}
if keyboard_check(ord("S")){
        playerVSpeed += playerSpeedIncrement;
       i_speed=0.15;
		leg_direction = point_direction(x,y,x+playerHSpeed, y+playerVSpeed);
}
if keyboard_check(ord("D")){
        playerHSpeed += playerSpeedIncrement;
      i_speed=0.15;
		leg_direction = point_direction(x,y,x+playerHSpeed, y+playerVSpeed);
}

//limit speed to maximum speed so it doesn't get too extreme
playerHSpeed = median(-playerSpeedMax,playerHSpeed,playerSpeedMax);
playerVSpeed = median(-playerSpeedMax,playerVSpeed,playerSpeedMax);
}




if (collision_line(x + (12 * sign(playerHSpeed)) + playerHSpeed, y - 11, 
                   x + (12 * sign(playerHSpeed)) + playerHSpeed, y + 11, obj_collisions, true, false)) {
    playerHSpeed = 0;
}
if (collision_line(x - 11, y + (12 * sign(playerVSpeed)) + playerVSpeed, 
                   x + 11, y + (12 * sign(playerVSpeed)) + playerVSpeed, obj_collisions, true, false)) {
    playerVSpeed = 0;
}

var _splitSpeed;
_splitSpeed = (playerSpeedMax - abs(playerHSpeed) - abs(playerVSpeed))/4 ;
x += (playerHSpeed + sign(playerHSpeed))
y += (playerVSpeed + sign(playerVSpeed))
playerXPrev = x;
playerYPrev = y;


    
//apply friction to movement
if (playerHSpeed < 0) {
  playerHSpeed = min(playerHSpeed+playerFriction,0);
} else {
  playerHSpeed = max(playerHSpeed-playerFriction,0);
}
if (playerVSpeed < 0) {
  playerVSpeed = min(playerVSpeed+playerFriction,0);
} else {
  playerVSpeed = max(playerVSpeed-playerFriction,0);
}

