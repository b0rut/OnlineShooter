/// @description Insert description here
// You can write your code in this editor

//Check if the mouse is clicked. If so, update the click position.
if mouse_check_button_pressed(mb_middle){

    click_x = mouse_x; //Set the initial x and y
    click_y = mouse_y;
}

//while middle mouse is down - move camera x/y according to current mouse position
if mouse_check_button(mb_middle){

    x += (click_x - mouse_x);
    y += (click_y - mouse_y);
}


//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[target_view]);
var vpos_y = camera_get_view_y(view_camera[target_view]);
var vpos_w = camera_get_view_width(view_camera[target_view]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[target_view]) * 0.5;

//The interpolation rate
var rate = 0.2;

//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, x - vpos_w, rate);
var new_y = lerp(vpos_y, y - vpos_h, rate);

//Update the view position
camera_set_view_pos(view_camera[target_view], new_x, new_y);

//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.2), 0.2, 5);

//Get current size
var view_w = camera_get_view_width(view_camera[target_view]);
var view_h = camera_get_view_height(view_camera[target_view]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by lerping current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[target_view], new_w, new_h);

//Get the shift necessary to re-align the view.
var shift_x = camera_get_view_x(view_camera[target_view]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[target_view]) - (new_h - view_h) * 0.5;

//Update the view position
camera_set_view_pos(view_camera[target_view],shift_x, shift_y);


if(keyboard_check_pressed(ord("G"))) {
	grid+=1;
}

if(grid > 1) {
grid = 0;	
}

