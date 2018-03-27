var gun_name = global.gun;

for(var i=0; i < ds_list_size(global.guns); i++) {
	
	var map = ds_list_find_value(global.guns, i);
	var name = ds_map_find_value(map, "name");
	if(name == gun_name) {
	var x_origin = ds_map_find_value(map, "x_origin");
	var y_origin = ds_map_find_value(map, "y_origin");
	var img_id = ds_map_find_value(map, "image_index");
	
	
	sprite_set_offset(spr_guns_topdown, x_origin, y_origin);
	
	draw_sprite_ext(spr_guns_topdown,img_id, x,y, 1+global.ideal_x*0.01,1+global.ideal_y*0.01,image_angle, c_white, 1);
	
	}

	
}