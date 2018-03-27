var name = argument0;
var img_id = argument1;
var group = argument2;
var obj_id = argument3;

var Map = ds_map_create();
ds_map_add(Map, "name", name);
ds_map_add(Map, "img_id", img_id);
ds_map_add(Map, "group", group);
ds_map_add(Map, "obj_index", obj_id);
ds_map_add(Map, "id", ds_list_size(global.obj_list));
ds_list_add(global.obj_list, Map);
