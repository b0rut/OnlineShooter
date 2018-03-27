var item_id =argument0;
var info_to_get = argument1;

for(var i=0; i < ds_list_size(global.item_db); i++) {

	var item = ds_list_find_value(global.item_db, i);
	var __id = ds_map_find_value(item, "id");
	
	if(item_id == __id) {
	
		var _info = ds_map_find_value(item, info_to_get);
		return _info;
		exit;
		
	}
	
}
