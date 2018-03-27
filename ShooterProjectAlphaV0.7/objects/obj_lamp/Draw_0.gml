/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_lamp_pole,0,xstart,ystart,point_distance(xstart,ystart,xstart+xoff,ystart+yoff)/64,1,point_direction(xstart,ystart,xstart+xoff,ystart+yoff),image_blend,image_alpha)

draw_sprite_ext(sprite_index,image_index,xstart+xoff,ystart+yoff,1,1,90,image_blend,image_alpha)