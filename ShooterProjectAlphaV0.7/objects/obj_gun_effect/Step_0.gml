/// @description Insert description here
// You can write your code in this editor
//x+lengthdir_x(5, image_angle),y+lengthdir_y(5, image_angle)
x=obj_player.x+lengthdir_x(5, image_angle);
y=obj_player.y+lengthdir_y(5, image_angle);
image_angle=obj_player.image_angle;
if(image_index == image_number-1) {

	with(self) {
	instance_destroy();	
	}
	
}
sprite_set_offset(sprite_index, global.flame_origin_x, global.flame_origin_y);




switch(global.gun_bullet) {

	case "normal": 
	
	sprite_index = spr_fire_rifle_effect;
	break;
	
	case "light":
	sprite_index = spr_pistol_fire;
	break;
	
	case "rocket":
	
	sprite_index = spr_fire_rpg;
	
	break;
	
	
	
}





	
	
	
	