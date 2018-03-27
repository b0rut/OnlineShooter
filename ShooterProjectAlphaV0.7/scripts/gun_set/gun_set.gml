global.gun=argument[0];

for(var i=0; i < ds_list_size(global.guns); i++) {

	var map = ds_list_find_value(global.guns, i);
	var g_name = ds_map_find_value(map, "name");
	if(g_name = global.gun) {
	
		global.gun_bullet = ds_map_find_value(map, "bullet_type");
		global.flame_origin_x = ds_map_find_value(map, "flame_origin_x");
		global.flame_origin_y = ds_map_find_value(map, "flame_origin_y");
		global.damage = ds_map_find_value(map, "damage");
		global.primary_bullets = ds_map_find_value(map, "primary_clip");
		global.secondary_bullets = ds_map_find_value(map, "secondary_clip");
		global.shoot_speed = ds_map_find_value(map, "shoot_time");
		global.reload_time = ds_map_find_value(map, "reload_time");
		global.bullet_speed = ds_map_find_value(map, "bullet_speed");
		global.clip_size = ds_map_find_value(map, "clip_size");
	}
	
	
}