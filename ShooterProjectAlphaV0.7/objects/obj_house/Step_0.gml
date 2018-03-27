/// @description Insert description here
// You can write your code in this editor
step_fake3d_cube();

if(point_in_rectangle(obj_player.x, obj_player.y, x, y, x+128, y+128) and global.z==0) {
	if(!instance_exists(obj_stairs)) {
	instance_create_depth(x+15, y+ 20, depth-3, obj_stairs);
	}
}


