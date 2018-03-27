

for(var i=0; i < 24; i++) {
	
	var slot_map = ds_list_find_value(global.inventory, i);
	var item_id = ds_map_find_value(slot_map, "item_id");
	var xxx = ds_map_find_value(slot_map, "x");
	var yyy = ds_map_find_value(slot_map, "y");
	
	
	for(var m = 0; m < ds_list_size(global.item_db); m++) {
	
		var itm_map = ds_list_find_value(global.item_db, m);
		var _id = ds_map_find_value(itm_map, "id");
		
		if(_id == item_id) {
		
			var img_id = ds_map_find_value(itm_map, "spr_shop_index");
			
			draw_sprite_ext(spr_items, img_id,x+ xxx+3,y+ yyy+3,0.7,0.7,0,c_white,1); 
			
		}
		
	}
	
}


if(point_in_rectangle(mouse_x, mouse_y, x,y,x + sprite_width, y + sprite_height)) {

for(var i=0; i < ds_list_size(global.inventory); i++) {
	
	var map = ds_list_find_value(global.inventory, i);
	var itm = ds_map_find_value(map, "item_id");
	if(itm > -1) {
	var xx = ds_map_find_value(map, "x");
	var yy = ds_map_find_value(map, "y");
	
	

	if(point_in_rectangle(mouse_x, mouse_y, xx,yy,x+xx+27,y+yy+27)) {
		var col = make_color_rgb(17,17,17);
		draw_set_color(col);
		draw_rectangle(mouse_x, mouse_y, mouse_x + 120, mouse_y+40,0)
		draw_set_color(c_black);
		draw_rectangle(mouse_x, mouse_y, mouse_x + 120, mouse_y+40,1)
		draw_set_color(c_white);
		draw_set_font(fnt_button);
		for(var m = 0; m < ds_list_size(global.item_db); m++) {
	
		var itm_map = ds_list_find_value(global.item_db, m);
		var _id = ds_map_find_value(itm_map, "id");
		if(_id == itm) {
			var itm_name = ds_map_find_value(itm_map, "name");
			var item_level = ds_map_find_value(itm_map, "level");
			draw_text(mouse_x+5, mouse_y+5, "Name: ");
			draw_text(mouse_x+5, mouse_y+17, "Rarity: ");
			var txt = "";
			var c = c_gray;
			switch(item_level) {
				
				case 0:
				txt = "Common";
				c = c_green;
				break;
				
			}
			draw_text(mouse_x+5 + string_width("Name: "), mouse_y+5, itm_name);
			draw_set_color(c);
			draw_text(mouse_x+5 + string_width("Rarity: "), mouse_y+17, txt);
			
			
			
		}
		
		
		}
		}
	
	}
	
	
	
	
}
}