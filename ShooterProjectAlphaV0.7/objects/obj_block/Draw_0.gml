//Four arrays that will contain the locations of the four vertices
//of the two rectangles
var topLeft, topRight, bottomRight, bottomLeft;

//Calculate vertices of the base rectangle, 0
topLeft[0, X] = x - length/2;
topLeft[0, Y] = y - width/2;

topRight[0, X] = x + length/2;
topRight[0, Y] = y - width/2;

bottomRight[0, X] = x + length/2;
bottomRight[0, Y] = y + width/2;

bottomLeft[0, X] = x - length/2;
bottomLeft[0, Y] = y + width/2;

//Distance to camera center, so that the bigger rectangle can be offset
//for the 3D effect
var cam_x = camera_get_view_x(view_camera);
var cam_y = camera_get_view_y(view_camera);
var cam_w = camera_get_view_width(view_camera);
var cam_h = camera_get_view_height(view_camera);

var camCenter;
camCenter[X] = cam_x + cam_w/2;
camCenter[Y] = cam_y + cam_h/2;

//Calculate offset to camera center
var camOffset;
camOffset[X] = x - camCenter[X];
camOffset[Y] = y - camCenter[Y];

//Set center point of the bigger rectangle
var topPos;
topPos[X] = x + (camOffset[X] * height);
topPos[Y] = y + (camOffset[Y] * height);

//Calculate vertices of the bigger rectangle, 1
topLeft[1, X] = topPos[X] - top_length/2;
topLeft[1, Y] = topPos[Y] - top_width/2;

topRight[1, X] = topPos[X] + top_length/2;
topRight[1, Y] = topPos[Y] - top_width/2;

bottomRight[1, X] = topPos[X] + top_length/2;
bottomRight[1, Y] = topPos[Y] + top_width/2;

bottomLeft[1, X] = topPos[X] - top_length/2;
bottomLeft[1, Y] = topPos[Y] + top_width/2;

//Determine which faces are visible
var topVisible = topLeft[1, Y] > topLeft[0, Y];
var rightVisible = topRight[1, X] < topRight[0, X];
var bottomVisible = bottomLeft[1, Y] < bottomLeft[0, Y];
var leftVisible = topLeft[1, X] > topLeft[0, X];

//Draw the base sprite
draw_sprite_pos(sprite_face, 0, topLeft[0, X], topLeft[0, Y], topRight[0, X], topRight[0, Y], bottomRight[0, X], bottomRight[0, Y], bottomLeft[0, X], bottomLeft[0, Y], 1);

//Draw the other four faces
//Up
draw_sprite_pos(sprite_face, 0, topLeft[1, X], topLeft[1, Y], topRight[1, X], topRight[1, Y], topRight[0, X], topRight[0, Y], topLeft[0, X], topLeft[0, Y], topVisible);

//Right
draw_sprite_pos(sprite_face, 0, topRight[0, X], topRight[0, Y], topRight[1, X], topRight[1, Y], bottomRight[1, X], bottomRight[1, Y], bottomRight[0, X], bottomRight[0, Y], rightVisible);

//Down
draw_sprite_pos(sprite_face, 0, bottomLeft[0, X], bottomLeft[0, Y], bottomRight[0, X], bottomRight[0, Y], bottomRight[1, X], bottomRight[1, Y], bottomLeft[1, X], bottomLeft[1, Y], bottomVisible);

//Left
draw_sprite_pos(sprite_face, 0, topLeft[1, X], topLeft[1, Y], topLeft[0, X], topLeft[0, Y], bottomLeft[0, X], bottomLeft[0, Y], bottomLeft[1, X], bottomLeft[1, Y], leftVisible);

//Draw the bigger rectangle sprite
draw_sprite_pos(sprite_face, 0, topLeft[1, X], topLeft[1, Y], topRight[1, X], topRight[1, Y], bottomRight[1, X], bottomRight[1, Y], bottomLeft[1, X], bottomLeft[1, Y], 1);