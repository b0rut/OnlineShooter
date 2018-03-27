/// @description Insert description here
// You can write your code in this editor
var c = make_color_rgb(24,23,21);
var c1 = make_color_rgb(89,76,42);
draw_sprite(spr_obj_selector, image_index, x, y);
draw_set_color(c_white);
draw_set_font(fnt_main);
var _yy = y + 59 + 48;
draw_text(x+38,y+21, "Tileset Selector");
draw_sprite(spr_next_forward, 0, x+144,_yy - 36);
draw_sprite(spr_selection_tilesicon, selected_tile_id, x+145, _yy - 36);
draw_sprite(spr_selection_tiles, selected_tile_id, x+32, y+135);


draw_set_color(c_red);
if(x_pos > -1 and y_pos > -1) {
draw_rectangle(x+32+x_pos*16,y+135+ y_pos*16,x+32+ x_pos*16 + 16,y+135+ y_pos*16 + 16, 1);
}


var _xx = x+144;

draw_set_color(c);
draw_rectangle(_xx-15, _yy + 185, _xx+55, _yy + 210, 0);
draw_set_color(c1);
draw_rectangle(_xx-15, _yy + 185, _xx+55, _yy + 210, 1);

draw_set_color(c);
draw_rectangle(_xx-122, _yy + 185, _xx-52, _yy + 210, 0);
draw_set_color(c1);
draw_rectangle(_xx-122, _yy + 185, _xx-52, _yy + 210, 1);

draw_set_color(c_white);
draw_set_font(fnt_main1);
draw_text(_xx+12, _yy + 190, "Fill");
draw_text(_xx-102, _yy + 190, "Close");

//Fill
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
_xx-15, _yy + 185, _xx+55, _yy + 210)) {
	draw_set_alpha(0.2);
	draw_set_color(c_white);
	draw_rectangle(_xx-15, _yy + 185, _xx+55, _yy + 210, 0);
	draw_set_alpha(1);
}

//Close
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
_xx-122, _yy + 185, _xx-52, _yy + 210)) {
	draw_set_alpha(0.2);
	draw_set_color(c_white);
	draw_rectangle(_xx-122, _yy + 185, _xx-52, _yy + 210, 0);
	draw_set_alpha(1);
}


if(browse == true) {
	alpha=0.2;
	
	draw_set_color(c);
	draw_rectangle(_xx+45, _yy+12, _xx+215, _yy+230, 0);
	
	draw_set_color(c1);
	draw_rectangle(_xx+45, _yy+12, _xx+215, _yy+230, 1);
	var _counter = 0;
	var xx,yy;
	xx = _xx+5+50;
	yy = _yy-40+64;
	var l = 0;
	
	for(var i=0; i < sprite_get_number(spr_selection_tilesicon); i++) {
		switch(i) {
			case 0:
				txt = "Grass";
				l = 12;
				
			break;
			case 1:
				txt = "Sand";
				l = 12;
				
			break;
			case 2:
				txt = "Dirt";
				l = 12;
				
			break;
		
			case 3:
				txt = "Road";
				l = 12;
				
			break;
			case 4:
				txt = "Street";
				l = 12;
				
			break;
			case 5:
				txt = "Sand\nroad";
				l = 24;
				
			break;
			
		}
		
		draw_sprite(spr_selection_tilesicon, i, xx +(_counter*50), yy);
		draw_set_color(c_white);
		draw_set_font(fnt_mini);
		
		draw_text(xx+5+(_counter*52),yy+46, txt);
		draw_set_color(c_white);
		
		if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),xx+(_counter*50),yy,xx+(_counter*50)+52,yy+64 )) {
		
			draw_set_alpha(0.2);
			draw_rectangle(xx+(_counter*50),yy+45, xx+(_counter*50) + 40, yy+45+l,0);
			draw_set_alpha(1);
			if(mouse_check_button_pressed(mb_left)) {
				
				
				x_pos = -1;
				y_pos = -1;
				selected_tile_id = i;	
				browse = 0;
				global.selected_tile=-1;
				
				
				
				
			}
		}
		_counter ++;
		
		if((i+1) % 3 == 0)  {
			yy += 68;
			_counter = 0;
			
			
		}
		
		
		
		
	}
	

	
	
}



draw_set_color(c);
draw_rectangle(_xx-4, _yy+12, _xx+41+4, _yy+28, 0);

draw_set_color(c1);
draw_rectangle(_xx-4, _yy+12, _xx+41+4, _yy+28, 1);
draw_set_color(c_white);
draw_set_font(fnt_mini);
draw_text(_xx+2,_yy+15, "Browse..");

if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),
_xx-4, _yy+12, _xx+41+4, _yy+28)) {
alpha=0.2;
draw_set_alpha(alpha);
draw_rectangle_color(_xx-4, _yy+12, _xx+41+4, _yy+28,c_white, c_white, c_white, c_white,0)	
draw_set_alpha(1);	
}

switch(selected_tile_id) {

case 0:
				txt1 = "Grass";
				
				
			break;
			case 1:
				txt1 = "Sand";
				
				
			break;
			case 2:
				txt1 = "Dirt";
				
				
			break;
		
			case 3:
				txt1 = "Road";
				
				
			break;
			case 4:
				txt1 = "Street";
				
				
			break;
			case 5:
				txt1 = "Sand road";
				
				
			break;

}


draw_set_color(c);
draw_rectangle(_xx-125, _yy - 38, _xx-45, _yy + 35, 0);
draw_set_color(c1);
draw_rectangle(_xx-125, _yy - 38, _xx-45, _yy + 35, 1);

draw_set_color(c_white);
draw_set_font(fnt_main1);
draw_text(_xx-125, _yy - 55, "Name: ");

draw_text(_xx-120, _yy - 34, "Tile depth:");
draw_set_font(fnt_mini);

draw_text(_xx-125+40, _yy - 53, txt1);
draw_text(_xx-120, _yy - 15, "Bottom");
draw_text(_xx-120, _yy , "Ground");
draw_text(_xx-120, _yy + 15, "Top");

draw_sprite(spr_layer_radio, 0, _xx-120+50, _yy - 15);
draw_sprite(spr_layer_radio, 0, _xx-120+50, _yy );
draw_sprite(spr_layer_radio, 0, _xx-120+50, _yy + 15);

switch(selected_depth) {
	case 0:
	draw_sprite(spr_layer_radio, 1, _xx-120+50, _yy-15 );
	break;
	case 1:
	draw_sprite(spr_layer_radio, 1, _xx-120+50, _yy );
	break;
	case 2:
	draw_sprite(spr_layer_radio, 1, _xx-120+50, _yy +15);
	break;
}






