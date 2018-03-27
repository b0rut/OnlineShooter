
move_towards_point(mouse_x, mouse_y, 0);
x_to = follow.x + lengthdir_x(min(64, distance_to_point(mouse_x, mouse_y)), direction);
y_to = follow.y + lengthdir_y(min(64, distance_to_point(mouse_x, mouse_y)), direction);



x+=(x_to - x)/22;
y+=(y_to - y)/22;

if(follow != noone) {

	x_to = follow.x;
	y_to = follow.y;
	
}

//var vm = matrix_build_lookat(x,y,-100,x,y,0,0,1,0);
//camera_set_view_mat(camera,vm);
camera_set_view_pos(camera, x - (camera_get_view_width(camera) / 2), y - (camera_get_view_height(camera) / 2));
