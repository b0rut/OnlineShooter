/// @description Insert description here
// You can write your code in this editor
character_spr_index = spr_gunner;
player_direction = 0;
i_speed=0;			// NEW!
i_index= 0;			// NEW!
primary = 0;

shoot_speed = 0.1;
can_shoot = true;
can_play=true;
global.z=1;
in_helicopter = false;
playerSpeedIncrement = 0.15; //moving speed
playerSpeedMax = 0.8; //maximum speed that it can achieve
playerFriction = 0.6; //friction, which is how many pixels it brakes each step
playerXPrev = x;
playerYPrev = y;
global.equiped_gun_id = 0;
playerHSpeed = 0;
playerVSpeed = 0;

leg_direction = 0;
instance_create_depth(x,y,depth+4, obj_player_shadow);
clipsize = global.primary_bullets;

// ADDED
Aura_Light_Init(sprite_width, merge_colour(c_white, c_yellow, 0.5), 1, false);