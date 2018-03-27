var size = argument0;
var text = argument1;
var xx = argument2;
var yy = argument3;

var col = make_color_rgb(154,122,37);

draw_sprite_ext(spr_button_layered, 0, xx-2,yy,1,1,0,c_white,1);
for(var l=0; l < size; l++) {

	draw_sprite_ext(spr_button_layered, 1, xx + l, yy,1,1,0,c_white,1);
	
}

draw_set_font(fnt_button);
draw_set_color(col);

draw_text_outline(xx+ size/2 - string_width(text)/2, yy+3, text,1,c_black,4);
draw_sprite_ext(spr_button_layered, 2, xx+size,yy,1,1,0,c_white,1);

