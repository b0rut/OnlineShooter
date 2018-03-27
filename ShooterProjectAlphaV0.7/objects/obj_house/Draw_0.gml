/// @description Insert description here
// You can write your code in this editor
draw_shadow(spr_house_roof);
draw_fake3d_cube(128, 128, spr_barack_side);
draw_fake3d_cube_end(128, 128);
if(global.z == 45 and point_in_rectangle(obj_player.x, obj_player.y, x, y, x+128, y+128) and obj_player.in_helicopter==false)
{
	draw_sprite_ext(sprite_index, 0, x,y, 1+global.ideal_x*0.01,1+global.ideal_y*0.01,image_angle, c_white, 1);
	
}
