/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_shop,0,x,y);
draw_set_font(fnt_main);
draw_set_color(c_white);
draw_text(x+sprite_get_width(spr_shop)/2-string_width(title)/2, y+12, title);
if(!surface_exists(surf)) {

	surf = surface_create(306, 200);
	
}


surface_set_target(surf);
draw_clear_alpha(c_white, 0);

draw_shop();

draw_shop_item_info();
check_purchase_button();
surface_reset_target();

draw_surface(surf,x+1, y+ 32);
//Debug

