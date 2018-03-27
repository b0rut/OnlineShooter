var x_offset = 8;
var y_offset = 4;
var x_split = 9;
var y_split = 11;
var rec_w = 90;
var rec_h = 56;
var counter = 0;
var xx = x_offset;
var yy = y_offset + scroll;
var outline_color = make_color_rgb(39, 34, 22);
var col1 = make_color_rgb(53, 46, 28);

draw_set_color(c_white);

var mx = mouse_x -x;
var my = mouse_y -y -40;
if(point_in_rectangle(mx, my,0,0, surface_get_width(surf), surface_get_height(surf)) ) {
	

	for(var i=0; i < ds_list_size(global.shop); i ++) {
	xx = x_offset +( (rec_w+x_split) * counter); 
		if(point_in_rectangle(mx, my, xx,yy,xx+rec_w, yy+rec_h)) {
			draw_set_color(col1);
			draw_rectangle(mx, my, mx+100, my+80, 0);
			draw_set_color(outline_color);
			draw_rectangle(mx, my, mx+100, my+80, 1);
			var map = ds_list_find_value(global.shop, i);
			var s_id = ds_map_find_value(map, "id");
			
			for(var j=0; j < ds_list_size(global.item_db); j++) {
				var item_map = ds_list_find_value(global.item_db, j);
				var i_id = ds_map_find_value(item_map, "id");
				if(s_id == i_id) {
			
			var name = ds_map_find_value(item_map, "name");
			var price = ds_map_find_value(item_map, "item_price");
			var pow = ds_map_find_value(item_map, "item_bonus");
			var item_level = ds_map_find_value(item_map, "level");
			draw_set_color(c_white);
			draw_set_font(fnt_item_info_store);
			draw_text(mx+5, my+5, "Name: "+string(name));
			draw_text(mx+5, my+17, "Price: "+string(price)+"$");
			draw_text(mx+5, my+27, "Power: "+ string(pow));
			draw_text(mx+5, my+37, "Level: "+string(item_level));
				}
			}
		}
		counter++
			if((i+1)%3 == 0) {
			
			yy+= rec_h + y_split;
		    counter = 0;
		}
		
	}

	
	
	
}