/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_obj_selector, image_index, x, y);
draw_set_color(c_white);
draw_set_font(fnt_main);
draw_text(x+43, y+18, "Object Selector");

if(surface_exists(surf) == false)  {
	
	surf = surface_create(sprite_get_width(spr_obj_selector)-30, sprite_get_height(spr_obj_selector)-106);
}
surface_set_target(surf);
draw_clear_alpha(c_white, 0);
var xx = 12;
var yy = 10;
if(mouse_check_button_pressed(mb_left)) {
	
}


for(var i=0; i < ds_list_size(global.obj_list); i++) {
	
	var ma = ds_list_find_value(global.obj_list, i);
	var img_id = ds_map_find_value(ma, "img_id");
	var group = ds_map_find_value(ma, "group");
	var name = ds_map_find_value(ma, "name");
	
	draw_sprite(spr_objects, img_id, xx, yy-scroll*3);
	
	xx+=64;
	
	if((i+1) % 3 == 0)
	{
	yy+=64;	
	xx-=(3*64);
	}
	
	
}
surface_reset_target();

draw_surface(surf,x,y+65);
draw_set_color(c);

draw_rectangle(x+xxx+92+100,y+yyy+65-24+scroll, x+xxx+12+92+100, y+yyy+130-21+scroll, 0);
draw_rectangle(x+xxx+92+100,y+yyy+65-24, x+xxx+12+92+100, y+yyy+65-24-12, 0);
draw_rectangle(x+xxx+92+100,y+yyy+130-21+65, x+xxx+12+92+100, y+yyy+130-21+65+12, 0);





if(inside==true) {
draw_set_color(c_white);
draw_set_alpha(0.4);
draw_rectangle(x+xxx+92+100,y+yyy+65-24+scroll, x+xxx+12+92+100, y+yyy+130-21+scroll, 0);
draw_set_alpha(1);
draw_set_color(c1);
draw_rectangle(x+xxx+92+100,y+yyy+65-24+scroll, x+xxx+12+92+100, y+yyy+130-21+scroll, 1);
}


draw_set_color(c1);
draw_rectangle(x+xxx+92+100,y+yyy+65-24+scroll, x+xxx+12+92+100, y+yyy+130-21+scroll, 1);
draw_rectangle(x+xxx+92+100,y+yyy+65-24, x+xxx+12+92+100, y+yyy+130-21+65, 1);
draw_rectangle(x+xxx+92+100,y+yyy+65-24, x+xxx+12+92+100, y+yyy+65-24-12, 1);
draw_rectangle(x+xxx+92+100,y+yyy+130-21+65, x+xxx+12+92+100, y+yyy+130-21+65+12, 1);

draw_rectangle(x+8,y+65,x+sprite_get_width(spr_obj_selector)-30, y+sprite_get_height(spr_obj_selector)-34, 1);
