/// @description Insert description here
// You can write your code in this editor
//macros
#macro X 0
#macro Y 1

//properties
height = 0.05;

length = 24;
width = 24;

top_length = length * (1+height);
top_width = width * (1+height);

//sprites
sprite_face = spr_box;
Aura_Shadow_Caster_Box_Init();
instance_create_depth(x,y,depth,obj_solid);