/// @description Insert description here
// You can write your code in this editor
my_x = 200;
my_y = 400;
drag=false;
DragOffsetX=-1;
DragOffsetY=-1;
global.selected_tile=-1;
x_pos = -1;
y_pos = -1;
selected_depth = 0;

global.bottom_layer = layer_create(30);
global.ground_layer = layer_create(20);
global.top_layer = layer_create(10);

//bottom_layer
global.grass_tm = layer_tilemap_create(global.bottom_layer, 0,0,tiles_grass, room_width,room_height);
global.sand_tm = layer_tilemap_create(global.bottom_layer, 0,0,tiles_sand, room_width,room_height);
global.dirt_tm = layer_tilemap_create(global.bottom_layer, 0,0,tiles_dirt, room_width,room_height);
global.road_tm = layer_tilemap_create(global.bottom_layer, 0,0,tile_road, room_width,room_height);
global.street_tm = layer_tilemap_create(global.bottom_layer, 0,0,tiles_street, room_width,room_height);
global.sand_road_tm = layer_tilemap_create(global.bottom_layer, 0,0,tiles_road_sand, room_width,room_height);
//Ground_layer
global.grass_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tiles_grass, room_width,room_height);
global.sand_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tiles_sand, room_width,room_height);
global.dirt_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tiles_dirt, room_width,room_height);
global.road_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tile_road, room_width,room_height);
global.street_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tiles_street, room_width,room_height);
global.sand_road_tm1 = layer_tilemap_create(global.ground_layer, 0,0,tiles_road_sand, room_width,room_height);
//top_layer
global.grass_tm2 = layer_tilemap_create(global.top_layer, 0,0,tiles_grass, room_width,room_height);
global.sand_tm2 = layer_tilemap_create(global.top_layer, 0,0,tiles_sand, room_width,room_height);
global.dirt_tm2 = layer_tilemap_create(global.top_layer, 0,0,tiles_dirt, room_width,room_height);
global.road_tm2 = layer_tilemap_create(global.top_layer, 0,0,tile_road, room_width,room_height);
global.street_tm2 = layer_tilemap_create(global.top_layer, 0,0,tiles_street, room_width,room_height);
global.sand_road_tm2 = layer_tilemap_create(global.top_layer, 0,0,tiles_road_sand, room_width,room_height);
selected_tilemap = global.grass_tm;
browse = 0;
alpha = 1;
selected_tile_id = 0;
txt = "";
txt1 = "";
