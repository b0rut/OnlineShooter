var name = argument0;

for(var i=0; i < ds_list_size(global.obj_list); i++) {

	var m = ds_list_find_value(global.obj_list, i);
	var n = ds_map_find_value(m, "name");
	
	if(name == n) {
	
		return ds_map_find_value(m, "obj_index");
		
	}
	
}