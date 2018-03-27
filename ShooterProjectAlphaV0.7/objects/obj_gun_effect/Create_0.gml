/// @description Insert description here
// You can write your code in this editor
image_speed=2;
depth=obj_player_shadow.depth-1;
can_burst = false;
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
	