/// @description Insert description here
// You can write your code in this editor
if(obj_player.in_helicopter==true) {
	
depth=obj_helicopter.depth+1;
}
else {

	depth=obj_player.depth-1;
	

	
}

//create the illusion of 3D
if (x - obj_camera.x > 0)
{
  xoff = point_distance(x, 0, obj_player.x, 0)/tree_height;
}

if (x - obj_camera.x < 0)
{
  xoff = -point_distance(x, 0, obj_camera.x, 0)/tree_height;
}

if (y - obj_camera.y > 0)
{
  yoff = point_distance(0, y, 0, obj_camera.y)/tree_height;
}

if (y - obj_camera.y < 0)
{
  yoff = -point_distance(0, y, 0, obj_camera.y)/tree_height;
}