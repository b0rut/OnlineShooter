global.inventory=ds_list_create();
var startx = 75
var starty = 5;

var xx =0;
var yy = y;
var slotwidth = 27;
var slotheight = 27;
var offset = 6;
var counter = 0;
for(var i=0; i < 24; i++) {
		var inventory_slot = ds_map_create();
		ds_map_add(inventory_slot, "id", i);
		ds_map_add(inventory_slot, "item_id", -1);
		ds_map_add(inventory_slot, "x", startx);
		ds_map_add(inventory_slot, "y", starty);
		show_debug_message(xx+startx);
		show_debug_message(yy+starty);
		xx+=slotwidth+offset;
		if((i+1) % 6 == 0) {
			
			xx = 0;
			yy += slotheight+offset;
			
		}
		
		
		ds_list_add(global.inventory, inventory_slot);
		
	
	
	
}