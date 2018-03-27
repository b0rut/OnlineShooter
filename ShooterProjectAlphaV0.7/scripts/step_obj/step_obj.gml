if(surface_exists(surf)) {
surface_set_target(surf);
var counter = 0;
var _xx = x;
var _yy = y+65;

if(mouse_check_button_pressed(mb_left)) {
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
_xx,_yy,_xx+sprite_get_width(spr_obj_selector)-30, _yy+sprite_get_height(spr_obj_selector)-34)) {
	
	for(var i=0; i < ds_list_size(global.obj_list); i++) {
	
		if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
		_xx, _yy-scroll*3, _xx+64, _yy-scroll*3+64)) {
			var m = ds_list_find_value(global.obj_list, i);
			var _id = ds_map_find_value(m, "id");
			if(_id == i) {
				
				var n = ds_map_find_value(m, "name");
				global.selected_obj = i;
				obj_place(n);
			}
		
			
		}
		_xx+=64;
	
	if((i+1) % 3 == 0)
	{
	_yy+=64;	
	_xx-=(3*64);
	}
		
	}
	
}

}
surface_reset_target();
}