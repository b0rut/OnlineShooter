/// @description Insert description here
// You can write your code in this editor
name = "File";
opened = false;
options = ds_list_create();
ds_list_add(options, "New Map");
ds_list_add(options, "Import Map");
ds_list_add(options, "Save Map");
ds_list_add(options, "Export Map");
selected = "";
option_size = ds_list_size(options);
DragOffsetX=-1;
DragOffsetY=-1;