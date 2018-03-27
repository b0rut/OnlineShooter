/// @description Insert description here
// You can write your code in this editor

flame_p_system = part_system_create_layer("Shadow_Casters", false);

part_system_depth(flame_p_system, obj_player.depth)
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_circle);
part_type_size(particle1,1,1,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,8454143,4227327,255);
part_type_alpha2(particle1,0.30,0.80);
part_type_speed(particle1,1,1,0,0);
part_type_direction(particle1,obj_player.image_angle,obj_player.image_angle+45,0,0);

part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);