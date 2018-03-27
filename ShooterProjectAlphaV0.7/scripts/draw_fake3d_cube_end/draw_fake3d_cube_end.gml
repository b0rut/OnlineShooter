var w = argument0;
var h = argument1;
if(!point_in_rectangle(obj_player.x, obj_player.y, x,y,x+128,y+128) or obj_player.in_helicopter==true) {
draw_sprite_pos(sprite_index,0,x-hdepth,y-vdepth,x+w-hdepth,y-vdepth,x+w-hdepth,y+h-vdepth,x-hdepth,y+h-vdepth,1);
}