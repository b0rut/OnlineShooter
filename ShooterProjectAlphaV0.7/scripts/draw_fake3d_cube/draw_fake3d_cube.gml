var w = argument0;
var h = argument1;
var side_spr = argument2;


draw_sprite(spr_house_bottom, 0, x, y);
/*
// LEFT
draw_sprite_pos(side_spr,0,x,y,x-hdepth,y-vdepth,x-hdepth,y+h-vdepth,x,y+h,1);

// RIGHT
draw_sprite_pos(side_spr,0,x+w,y,x+w-hdepth,y-vdepth,x+w-hdepth,y+h-vdepth,x+w,y+h,1);*/

// TOP

if(!point_in_rectangle(obj_player.x, obj_player.y, x,y,x+128,y+128) or obj_player.in_helicopter==true) {
draw_sprite_pos(side_spr,0,x-hdepth,y-vdepth,x+w-hdepth,y-vdepth,x+w,y,x,y,1);


// LEFT
draw_sprite_pos(side_spr,0,x,y,x-hdepth,y-vdepth,x-hdepth,y+h-vdepth,x,y+h,1);

// RIGHT
draw_sprite_pos(side_spr,0,x+w,y,x+w-hdepth,y-vdepth,x+w-hdepth,y+h-vdepth,x+w,y+h,1);
// BOTTOM
draw_sprite_pos(spr_barack_side1,0,x-hdepth,y+h-vdepth,x+w-hdepth,y+h-vdepth,x+w,y+h,x,y+h,1);

}
