/// @description Insert description here
// You can write your code in this editor

if(can_drag==true) {
var place_x = round((mouse_x)/32)*32;
var place_y= round((mouse_y)/32)*32;

x=place_x;
y=place_y;
if(instance_exists(obj_tile_selector)) {
			with(obj_tile_selector) {
				
				global.selected_tile = -1;
				x_pos = -1;
				y_pos = -1;
			}
			}
drag=true;
}