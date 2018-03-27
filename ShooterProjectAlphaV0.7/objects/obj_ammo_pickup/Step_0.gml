/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("P"))) {

	inventory_add_item(0);
	with(self) {
		instance_destroy();	
	}
	
}

