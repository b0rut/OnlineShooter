var n = argument0;
	if(instance_number(obj_placeable_obj) < 1) {
		
	
		
		
		var placeable = instance_create_depth(mouse_x, mouse_y, 50, obj_placeable_obj);
		
		
		placeable.image_index = global.selected_obj;
		placeable._name = n;
		

	}
	
