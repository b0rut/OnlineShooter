/// @description Insert description here
// You can write your code in this editor
/*camera = camera_create();

var vm = matrix_build_lookat(x,y,-20,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(384, 288, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);*/

camera = camera_create_view(0, 0, 384, 288, 0, -1, 0, 0, 0, 0);

view_camera[0] = camera;
follow = obj_player;
x_to = x;
y_to = y;