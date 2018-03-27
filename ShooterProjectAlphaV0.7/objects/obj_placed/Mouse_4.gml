/// @description Insert description here
// You can write your code in this editor

can_drag=true;
for(var i=0; i < instance_number(obj_placed); i++) {

var in = instance_find(obj_placed, i);
if(!in == self) {

	can_drag=false;
	
}

}