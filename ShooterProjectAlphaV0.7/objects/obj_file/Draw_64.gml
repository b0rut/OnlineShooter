/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_editor_menu);
draw_set_color(c_white);
draw_text(15, 5, name);
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),0,0,60,32))
{
draw_set_color(c_gray);
draw_set_alpha(0.4);
draw_roundrect_ext(5,3,55,29,6,8,0)
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(15, 5, name);
draw_line(13,26,50,26);	
draw_line(13,27,50,26);	
}


if(opened == true) {
	draw_set_color(c_gray);
draw_set_alpha(0.4);
draw_roundrect_ext(5,3,55,29,6,8,0)
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(15, 5, name);
draw_line(13,26,50,26);	
draw_line(13,27,50,26);	
	draw_set_color(make_color_rgb(24,23,21));
	draw_rectangle(5,30,155, 30 + option_size * 32,0)
	
	
	draw_set_color(make_color_rgb(89,76,41));
	draw_rectangle(5,30,155, 30 + option_size * 32, 1)
	draw_set_color(make_color_rgb(24,23,21));
	draw_rectangle(5,30,155, 31,0)
	var yy = 35;
	for(var i = 0; i < ds_list_size(options); i++) {
			draw_set_color(c_white);
			draw_text(12, yy + ( i * 31), ds_list_find_value(options, i));
		
	}
	
	if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),5,35,155,35 + (option_size*31) )) {
	
		for(var i = 0; i < ds_list_size(options); i++) {
		
			if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),5, 35 + ( i * 31), 155, 35 + ( i*31)+32)) {
			
				draw_set_alpha(0.4);
				draw_rectangle(5, 35 + ( i * 31), 155, 35 + ( i*31)+28, 0);
				draw_set_alpha(1);
				draw_set_color(c_white);
			    draw_text(12, yy + ( i * 31), ds_list_find_value(options, i));
				selected = ds_list_find_value(options, i);
			}
			
			
		}
		
	}
	else {
		selected = "";
	}
	
}

