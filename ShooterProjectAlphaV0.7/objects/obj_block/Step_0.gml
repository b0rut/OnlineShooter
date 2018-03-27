/// @description Insert description here
// You can write your code in this editor
//depth
var cam_x = camera_get_view_x(view_camera);
var cam_y = camera_get_view_y(view_camera);
var cam_w = camera_get_view_width(view_camera);
var cam_h = camera_get_view_height(view_camera);

var camCenter;
camCenter[X] = cam_x + cam_w/2;
camCenter[Y] = cam_y + cam_h/2;

var depth_x, depth_y;
depth_x = abs(x - camCenter[X]);
depth_y = abs(y - camCenter[Y]);

depth = abs(depth_x + depth_y);