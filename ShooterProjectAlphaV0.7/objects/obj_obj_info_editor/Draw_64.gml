/// @description Insert description here
// You can write your code in this editor

draw_set_color(c);
draw_rectangle(x,y,x+130,y+60, 0);
draw_set_color(c1);
draw_rectangle(x,y,x+130,y+60, 1);

draw_set_color(c_white);
draw_set_font(fnt_mini);
draw_text(x+5,y+5, "Name:   "+string(name));
draw_text(x+5,y+23, "Scale: ");
draw_text(x+5,y+41, "Rotate: ");

//draw left right for scale
draw_sprite(spr_leftright, 0, x+68, y+23);

draw_text(x+80,y+23, my_inst.image_xscale);
draw_sprite(spr_leftright, 1, x+105,y+ 23);


//draw for rotate

draw_sprite(spr_leftright, 0, x+68, y+41);

draw_text(x+80,y+41, my_inst.image_angle);
draw_sprite(spr_leftright, 1, x+105,y+ 41);

if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x+68, y+23, x+68+13, y+23+14)) {
if(mouse_check_button_pressed(mb_left)) {

	my_inst.image_xscale-=0.1;
	my_inst.image_yscale-=0.1;
}
}
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x+105, y+23, x+105+13, y+23+14)) {
if(mouse_check_button_pressed(mb_left)) {
	my_inst.image_xscale+=0.1;
	my_inst.image_yscale+=0.1;
}
}

if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x+68, y+41, x+68+13, y+41+14)) {
if(mouse_check_button_pressed(mb_left)) {

	my_inst.image_angle-=22.5;
	my_inst.image_angle-=22.5;

}
}
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x+105, y+41, x+105+13, y+41+14)) {
if(mouse_check_button_pressed(mb_left)) {
	my_inst.image_angle+=22.5;
	my_inst.image_angle+=22.5;

}
}