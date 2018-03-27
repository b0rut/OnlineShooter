/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left) and
point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x,y,x+sprite_get_width(spr_obj_selector), y+45))  {
	
DragOffsetX=device_mouse_x_to_gui(0)-x;
DragOffsetY=device_mouse_y_to_gui(0)-y;
drag=true;	

drag=true;
	
}
if(drag==true) {
if(mouse_check_button(mb_left) ) {

x += device_mouse_x_to_gui(0)-x-DragOffsetX;
y += device_mouse_y_to_gui(0)-y-DragOffsetY;

}
else {
drag=false;

}
}
var x_off = x + 32;
var y_off = y + 130;

if(mouse_check_button_pressed(mb_left) and
point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x_off+16, y_off+16,x_off+sprite_get_width(spr_selection_tiles)-16, y_off+sprite_get_height(spr_selection_tiles)-16))  {
	var counter = 0;
	for(var i=0; i < 10; i++) {
	
		for(var j=0; j < 10; j++) {
		
			if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x_off + ( j * 16), y_off + (i * 16), x_off + (j*16)+16, y_off + (i*16)+16)) {
			
				x_pos = j;
				y_pos = i;
				global.selected_tile = counter;
				
				
			}
			counter ++;
		}
		
	}
	
}

if(mouse_check_button_pressed(mb_left) and !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x,y,x+sprite_get_width(spr_obj_selector), y+sprite_get_height(spr_obj_selector))) {
  
    if(mouse_x < room_width and mouse_y < room_height) {
	layer_select();
	}
	
}

//draw tiles HOLD
if(mouse_check_button(mb_left) and keyboard_check(vk_shift)  and !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x,y,x+sprite_get_width(spr_obj_selector), y+sprite_get_height(spr_obj_selector))) {
	
    if(mouse_x < room_width and mouse_y < room_height) {
		
	layer_select();

	
	}
}

if(mouse_check_button_pressed(mb_right) and global.selected_obj == ""  and !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x,y,x+sprite_get_width(spr_obj_selector), y+sprite_get_height(spr_obj_selector))) {

    //delete tile
	var tile = tilemap_get_at_pixel(selected_tilemap, mouse_x, mouse_y)
	tilemap_clear(tile, 0)
	tilemap_set_at_pixel(selected_tilemap, 0, mouse_x, mouse_y);
	
}
if(mouse_check_button(mb_right) and global.selected_obj == "" and keyboard_check(vk_shift) and !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),x,y,x+sprite_get_width(spr_obj_selector), y+sprite_get_height(spr_obj_selector))) {

    //delete tile
	var tile = tilemap_get_at_pixel(selected_tilemap, mouse_x, mouse_y)
	tilemap_clear(tile, 0)
	tilemap_set_at_pixel(selected_tilemap, 0, mouse_x, mouse_y);
	
}
var _xx = x+144;
var _yy = y + 59 + 48;
if(mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),
_xx-4, _yy+12, _xx+41+4, _yy+28)) {

browse+=1;

}

if(browse > 1) {

	browse = 0;
}


//Fill-Close
//Fill
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
_xx-15, _yy + 185, _xx+55, _yy + 210) and mouse_check_button_pressed(mb_left)) {
	
	
	for(var i=0; i < room_height/32; i++) {
	
		for(var j=0; j < room_width/32; j++) {
			var tile = tilemap_get_at_pixel(selected_tilemap, j*32, i*32);
			tilemap_clear(tile, 0);
			
			tilemap_set_at_pixel(selected_tilemap, global.selected_tile, j*32, i*32);
			
			
		}
		
	}
}

//Close
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
_xx-122, _yy + 185, _xx-52, _yy + 210)and mouse_check_button_pressed(mb_left)) {
	with(self) {
	
		instance_destroy();
	
	}
}

if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),_xx-120+50, _yy - 15,_xx-120+50+12, _yy + 30) and
mouse_check_button_pressed(mb_left)) {
	var yyy = _yy-15;
	for(var i=0; i <=2; i++) {
		
		if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),_xx-120+50, yyy,_xx-120+50+12,yyy+15)) {
			selected_depth = i;
				
				
				
	
		}
		yyy+=15;
	}
}
	
	
	//selected_depth
				switch(selected_tile_id) {
				case 0:
				if(selected_depth==0) {
				selected_tilemap = global.grass_tm;
				} 
				else if(selected_depth==1) {
				selected_tilemap = global.grass_tm1;	
				} else if(selected_depth == 2) {
				selected_tilemap = global.grass_tm2;	
				}
				
				break;
				case 1:
				if(selected_depth==0) {
				selected_tilemap = global.sand_tm;
				} else if(selected_depth==1){
					selected_tilemap = global.sand_tm1;
				} else if(selected_depth==2) {
					selected_tilemap = global.sand_tm2;
					
				}
				
				break;
				case 2:
				if(selected_depth==0) {
				selected_tilemap =global.dirt_tm;
				} else if(selected_depth==1){
					selected_tilemap =global.dirt_tm1;
				} else if(selected_depth==2) {
					selected_tilemap =global.dirt_tm2;
				}
				
				break;
				case 3:
				if(selected_depth==0) {
				selected_tilemap = global.road_tm;
				} else if(selected_depth==1){
					selected_tilemap =global.road_tm1;
				} else if(selected_depth==2) {
					selected_tilemap =global.road_tm2;
				}
				
				break;
				case 4:
				if(selected_depth==0) {
				selected_tilemap = global.street_tm;
				} else if(selected_depth==1){
					selected_tilemap =global.street_tm1;
				} else if(selected_depth==2) {
					selected_tilemap =global.street_tm2;
				}
				
				break;
				case 5:
				if(selected_depth==0) {
				selected_tilemap = global.sand_road_tm;
				} else if(selected_depth==1){
					selected_tilemap = global.sand_road_tm1;
				} else if(selected_depth==2) {
					selected_tilemap = global.sand_road_tm2;
				}
				
				break;
				}
				
