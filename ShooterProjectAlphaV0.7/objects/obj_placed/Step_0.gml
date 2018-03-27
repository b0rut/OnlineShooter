/// @description Insert description here
// You can write your code in this editor




if(mouse_check_button_pressed(mb_left)) {

	
		if(!point_in_rectangle(mouse_x, mouse_y, x-(sprite_width/2)*image_xscale, y-(sprite_height/2)*image_xscale, x+(sprite_width/2)*image_xscale, y+(sprite_height/2)*image_xscale))
		{
		if(instance_exists(obj_obj_info_editor)) {
		if(!point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_obj_info_editor.x,obj_obj_info_editor.y,obj_obj_info_editor.x+130,obj_obj_info_editor.y+65)) {
		
		
		
		selected=false;
		with(obj_obj_info_editor) {
				instance_destroy();
			
			}
		}
		
			
		
		}
		}
		else {
			if(instance_exists(obj_tile_selector)) {
			with(obj_tile_selector) {
				
				global.selected_tile = -1;
				x_pos = -1;
				y_pos = -1;
			}
			}
			selected=true;
			deselect_other();
			exit;
		}
	
	
}


if(selected==true and instance_number(obj_obj_info_editor) < 1) {
	
	var ins = instance_create_depth(20,80,depth+3, obj_obj_info_editor);
	ins.name = name;
	ins.my_inst = self ;
	
	
}


image_angle=clamp(image_angle, 0, 360);
image_xscale=clamp(image_xscale, 0.25, 2.5);
image_yscale=clamp(image_yscale, 0.25, 2.5);