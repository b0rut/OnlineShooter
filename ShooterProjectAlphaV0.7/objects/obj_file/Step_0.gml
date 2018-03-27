/// @description Insert description here
// You can write your code in this editor
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),0,0,60,32) and mouse_check_button_pressed(mb_left))
{
	opened = true;
}

if(mouse_check_button_pressed(mb_left) and !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),0,0,60,32) and opened==true) {
	
	opened = false;	
	
}


if( mouse_check_button_pressed(mb_left) and !selected == "") {
	
	switch(selected) {
		
		case "New Map":
		
		if(instance_exists(obj_placed)) {
		with(obj_placed) {
			instance_destroy();
		}
		}
		tile_clear();
			selected = "";
		    opened=false;
		
		break;
		
	}

}