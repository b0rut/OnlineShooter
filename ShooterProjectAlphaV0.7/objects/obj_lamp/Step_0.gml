/// @description Insert description here
// You can write your code in this editor
if x-obj_camera.x>0 then xoff=point_distance(x,0,obj_camera.x,0)/7
if x-obj_camera.x<0 then xoff=-point_distance(x,0,obj_camera.x,0)/7
if y-obj_camera.y>0 then yoff=point_distance(0,y,0,obj_camera.y)/7
if y-obj_camera.y<0 then yoff=-point_distance(0,y,0,obj_camera.y)/7