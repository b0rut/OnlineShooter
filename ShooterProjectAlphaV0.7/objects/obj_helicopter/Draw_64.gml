/// @description Insert description here
// You can write your code in this editor
if(point_distance(x,y,obj_player.x,obj_player.y) < 50 ) {
		
		///draw_text_outline(x,y,str,outwidth,outcol,outfidelity)
		draw_set_font(fnt_main);
		draw_set_color(c_white);
		if(obj_player.in_helicopter == false) {
		
		draw_set_font(fnt_enter_venicle);
		draw_text_outline(room_width/2-string_width("Press 'E' To enter helicopter")/2, room_height/3, "Press 'E' To enter helicopter",1,c_black, 8);
		
		}
}

if(obj_player.in_helicopter==true) {

	draw_set_font(fnt_height);
		draw_text_outline(room_width/2-string_width("000")/2, room_height-room_height/5, string(round(global.z*1.3))+"m",1,c_black, 8);
	
}