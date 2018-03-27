/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player) < 15) {
	
	global.z=0;
	with(self) {
	instance_destroy();	
	}
	
}