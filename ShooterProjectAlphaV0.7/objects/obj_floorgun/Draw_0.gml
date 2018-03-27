/// @description Insert description here
// You can write your code in this editor
draw_self();

if(distance_to_point(obj_player.x, obj_player.y) < 10) {
	draw_set_font(fnt_mini);
	draw_text_outline(x-60, y-20,"Press 'E' to pickup a weapon", 1, c_black, 2);
	if(keyboard_check_pressed(ord("E"))) {
		
		equipment_replace("weapon",-1);
		
	}
}
