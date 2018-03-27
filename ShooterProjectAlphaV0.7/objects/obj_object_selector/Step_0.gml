/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left) and
point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x,y,x+sprite_get_width(spr_obj_selector), y+45))  {
	
DragOffsetX=device_mouse_x_to_gui(0)-x;
DragOffsetY=device_mouse_y_to_gui(0)-y;
drag=true;	


	
}
if(drag==true) {
if(mouse_check_button(mb_left) ) {

x += device_mouse_x_to_gui(0)-x-DragOffsetX;
y += device_mouse_y_to_gui(0)-y-DragOffsetY;

}
else {
drag=false;

}
}


step_obj();
step_slider();
