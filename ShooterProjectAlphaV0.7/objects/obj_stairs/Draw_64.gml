/// @description Insert description here
// You can write your code in this editor
if(distance_to_point(obj_player.x, obj_player.y) < 15) {
	draw_set_font(fnt_main);
		draw_set_color(c_white);
		draw_set_font(fnt_enter_venicle);
		draw_text_outline(room_width/2-string_width("Press 'Enter' to go up the stairs")/2, room_height/3, "Press 'Enter' to go up the stairs",1,c_black, 8);
		
	if(keyboard_check_pressed(vk_enter)) {
		if(global.z=0) {
		global.z = 45;	
		}
		else {
		global.z=0;	
		}
		if(!instance_exists(obj_goback)) {
		instance_create_depth(x,y,depth-2, obj_goback);
			
		}
		with(self) {
			instance_destroy(); 
			depth=obj_helicopter.depth-1;
		
		
	}
}
}