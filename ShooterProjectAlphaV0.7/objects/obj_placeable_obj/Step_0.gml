/// @description Insert description here
// You can write your code in this editor
var gridWidth = 32;
var gridHeight = 32;
var place_x = round((mouse_x-140)/gridWidth)*gridWidth;
var place_y= round((mouse_y-140)/gridHeight)*gridHeight;
var pos_x = round((mouse_x)/gridWidth)*gridWidth;
var pos_y= round((mouse_y)/gridHeight)*gridHeight;
x=pos_x;
y=pos_y;

if(mouse_check_button_pressed(mb_left) and !instance_position(pos_x,pos_y,obj_placed)) {
	
var ins = instance_create_depth(pos_x, pos_y, depth-2, obj_placed);
ins.image_index = image_index;
ins.name = _name;
	
}
if(mouse_check_button_pressed(mb_right)) {
global.selected_obj = -1;
with(self)
{
instance_destroy();	
}
	
}
depth=obj_camera_controller.depth-1;