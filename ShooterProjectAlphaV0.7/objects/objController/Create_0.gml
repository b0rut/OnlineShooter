/// @description Insert description here
// You can write your code in this editor
room_speed=60;
image_speed=0;

global.primary_bullets = 30;
global.secondary_bullets = 60;
global.player_health = 100;
global.player_armor = 100;
global.camera_w = 384;
global.camera_h = 288;
global.z = 0;
global.ideal_x = 1;
global.ideal_y = 1;
global.gun = "";
global.gun_bullet = "";
global.flame_origin_x = -1;
global.flame_origin_y = -1;
global.damage= -1;
global.shoot_time = -1;
global.reload_time = -1;
global.shoot_speed = -1;
global.clip_size =-1;

init_gunsystem();
create_game_inventory();
init_item_db();
init_item_shop();
init_equipment();
display_reset(0,true);

gun_add("UMP-45", 17, 31, 3, 1200, 0, 0, 8, "normal", 30, 60,0,15,0.2,1,20,1);
//gun_add("Flamethrower", 31, 31, 3, 4000, 1, 0, 8, "flames", 900, 4,0,15);
gun_add("RPG", 31, 24, 3, 4000, 2, 0, 8, "rocket", 1, 4,0,7, 4, 1, 4, 2);
gun_add("Rifle", 19, 27, 3, 2750, 3, 0, 8, "normal", 30, 4,1,12,0.3,1,15,1);
gun_add("Usp", 22, 29, 3, 2750, 4, 0, 8, "light", 900, 4,2,8,0.2,1,15,1);
gun_set("RPG");





var xx, yy;
xx = camera_get_view_x(view_camera[0])/2;
yy = camera_get_view_y(view_camera[0])/2;
global.player_weight = 4;
//instance_create_depth(300, 300, 50, obj_player);
inventory_init();
global.inventory_open = false;
depth=999;


