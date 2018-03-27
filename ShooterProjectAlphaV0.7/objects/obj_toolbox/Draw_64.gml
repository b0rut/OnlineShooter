/// @description Insert description here
// You can write your code in this editor
draw_set_color(c);
draw_rectangle(x,y,x+40,y+160, 0);
draw_set_color(c1);
draw_rectangle(x,y,x+40,y+160, 1);
for(var i=0; i < 4; i++) {
	draw_sprite(spr_icons,i, x,y + (i*40));
}
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
x,y,x+40, y+160)) {

	for(var i=0; i < 4; i++) {
		
		if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
x,y + (i*40),x+40, y+ (i*40)+40)) {
	draw_set_alpha(0.4);
	draw_set_color(c_white);
	draw_rectangle(x,y + (i*40),x+40, y+ (i*40)+40, 0);
	draw_set_alpha(1);
	draw_sprite(spr_icons,i, x,y + (i*40));
	
	draw_set_color(c1);
		draw_rectangle(x,y + (i*40),x+40, y+ (i*40)+40, 1);
		
		if(mouse_check_button_pressed(mb_left)) {
		
			switch(i) {
			
				case 0:
				if(instance_exists(obj_object_selector)) {
				
					with(obj_object_selector) {
						instance_destroy();
					}
					
				} else {
					var objselector = instance_create_depth(200,200, -50, obj_object_selector);
				}
				break;
				
				case 1:
				if(instance_exists(obj_tile_selector)) {
				
					with(obj_tile_selector) {
						instance_destroy();
					}
					
				} else {
					var tileselector = instance_create_depth(500,200, -50, obj_tile_selector);
				}
				break;
			}
			
		}
	}
	}
}