/// @description Insert description here
// You can write your code in this editor

if(global.z > 0) {
global.ideal_x = (global.z * 100) / global.camera_w// global.camera_w / (global.camera_w + global.z) ;
global.ideal_y = (global.z * 100) / global.camera_h// global.camera_h/ (global.camera_h + global.z) ;
}
else {
	global.ideal_x = 1;
	global.ideal_y = 1;
}

if keyboard_check_pressed(ord("I")) {

	global.inventory_open +=1;

}

if(global.inventory_open > 1) {

	global.inventory_open = 0;
	
}

if(global.inventory_open == 1) {
	obj_camera.speed=0;
	
	instance_create_depth((view_current)+120,view_get_hport(view_current)+200,obj_player.depth+5,obj_inventory);
	
}