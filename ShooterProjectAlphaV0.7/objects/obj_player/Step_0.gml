/// @description Insert description here
// You can write your code in this editordi
if(instance_exists(obj_helicopter)) {
if(in_helicopter==true) {
	depth=20;
	obj_helicopter.depth=-5;
}
}
image_angle = point_direction(x, y, mouse_x, mouse_y);

if(playerHSpeed == 0 or playerVSpeed == 0) {
	i_speed=0;
}

if(global.secondary_bullets == 0 and global.primary_bullets == 0) {
	can_shoot=false;
	if(mouse_check_button(mb_left)) {
		alarm[2] = 0.3;
		
		
	
	}
	
}

direction = point_direction(x,y,x,y)
if(global.primary_bullets == 0 and can_shoot=true) {
	can_shoot=false;
	audio_play_sound(snd_clipout_rifle, 8, 0);
	if(!audio_is_playing(snd_clipout_rifle)) {
	
		audio_play_sound(snd_clipin_rifle, 8, 0) 
		alarm[1] = room_speed*global.reload_time;
	}
		
			if(!audio_is_playing(snd_clipin_rifle)) {
				
				
				alarm[1] = room_speed*global.reload_time;
			
			
		}
		
	}
	
if(keyboard_check_pressed(ord("R")) and global.primary_bullets < clipsize){
can_shoot=false;
	audio_play_sound(snd_clipout_rifle, 8, 0);
	
	
		audio_play_sound(snd_clipin_rifle, 8, 0) 
		alarm[1] = room_speed*global.reload_time;
	
	
	
}

if(mouse_check_button(mb_left) and can_shoot=true) {
	
	var bullet = instance_create_depth(x+lengthdir_x(5, image_angle),y+lengthdir_y(5, image_angle), -200, obj_bullet);
	if(!instance_exists(obj_gun_effect)) {
	var animation = instance_create_depth(x+lengthdir_x(4, image_angle),y+lengthdir_y(4, image_angle), depth+2, obj_gun_effect);
	animation.image_angle = image_angle;
	}
	bullet.speed = global.bullet_speed;
	bullet.direction = image_angle;
	bullet.image_angle=direction;
	can_shoot = false;
	alarm[0] = room_speed * global.shoot_speed;
	global.primary_bullets -=1;
	audio_play_sound(snd_rifle_shoot, 10, 0);
	
}

depth=30;

if(in_helicopter == true) {

	visible = false;
	x = obj_helicopter.x;
	y = obj_helicopter.y;
	can_shoot = false;
	
} else if(in_helicopter == false and x = obj_helicopter.x and y = obj_helicopter.y) {
	
	visible = true;
	x = obj_helicopter.x+30;
	y = obj_helicopter.y+20;

}

playerMove();