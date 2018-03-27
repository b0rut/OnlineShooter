var x_offset = 8;
var y_offset = 4;

var x_split = 9;
var y_split = 11;
var title = "Item shop";


var rec_col = make_color_rgb(17,17,17);
var rec_w = 90;
var rec_h = 56;
var outline_color = make_color_rgb(39, 34, 22);
var col1 = make_color_rgb(53, 46, 28);
var counter = 0;
var xx = x_offset;
var yy = y_offset + scroll;

for(var i=0; i < ds_list_size(global.shop); i++) {
	
	var m = ds_list_find_value(global.shop, i);
	var item_id = ds_map_find_value(m, "id");
	var item_desc = ds_map_find_value(m, "desc");
				draw_set_color(rec_col);
		
		xx = x_offset +( (rec_w+x_split) * counter); 
		
		draw_rectangle(xx, yy, xx + rec_w, yy + rec_h, 0);
		draw_set_color(c_black);
		draw_rectangle(xx, yy, xx + rec_w, yy + rec_h, 1);
		
		
		
	

	for(var j=0; j < ds_list_size(global.item_db); j++) {
		
		
		var mp = ds_list_find_value(global.item_db, j);
		var itm_id = ds_map_find_value(mp, "id");
		
		if(itm_id == item_id) {
		
			//get price, level and name of gun
			var name = ds_map_find_value(mp, "name");
			var price = ds_map_find_value(mp, "price");
			var level = ds_map_find_value(mp, "level");
			var im_index = ds_map_find_value(mp, "spr_shop_index");
			var img = ds_map_find_value(mp, "item_spr_index");
			
			//Draw an item in center
			draw_sprite(spr_guns, img, xx+5, yy-3);
	//40, 5
		counter ++;
			//Let's draw that stupid piece of shit level of item...
			if(level == -1) {
				var mx = mouse_x -x;
				var my = mouse_y -y -40;
				draw_button_size(46,"BUY", xx+23, yy+rec_h - 16);
				
			} else {
				draw_sprite(spr_upgrade, 0, xx+20, yy + rec_h -19);
			for(var k=0; k < level; k ++) {
				
				draw_sprite(spr_upgrade_bar, 0, xx + 23+ ((sprite_get_width(spr_upgrade_bar)+1) * k ) , yy + rec_h -16);
				
			}
		
			draw_sprite(spr_plus, 0, xx+ 21+40, yy + rec_h -14);
			}
		}
	
		
	}
		if((i+1)%3 == 0) {
			
			yy+= rec_h + y_split;
		    counter = 0;
		}
	
	
	
}


