/// @description Insert description here
// You can write your code in this editor
if(point_in_rectangle(obj_player.x, obj_player.y,x-10,y-10,x+sprite_width+10, y+sprite_height+10)) {
		
		///draw_text_outline(x,y,str,outwidth,outcol,outfidelity)
		draw_set_font(fnt_main);
		draw_set_color(c_white);
		
		
		draw_set_font(fnt_enter_venicle);
		draw_text_outline(512-string_width("Press 'P' to pickup Ammo box")/2, 300, "Press 'P' to pickup Ammo box",1,c_black, 8);
		
		
}
