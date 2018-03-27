var item_id = argument0;
for(var i=0; i < ds_list_size(global.inventory); i++) {
	
	var map = ds_list_find_value(global.inventory, i);
	var itm_id = ds_map_find_value(map, "item_id");
	
	if(itm_id == -1) {
	
		ds_map_replace(map, "item_id", item_id);
		exit;
		
	}
	
}