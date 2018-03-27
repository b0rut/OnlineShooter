/// @description Insert description here
// You can write your code in this editor
my_x = 500;
my_y = 400;
xxx = 8;
yyy = 75;
drag=false;
drag1=false;
drag_off_y=-1;
DragOffsetX=-1;
DragOffsetY=-1;
surf = noone;
global.selected_obj = "";
objeclist_init();
obj_add("House", 0, "Buildings", obj_house);
obj_add("Barricade", 1, "Buildings", obj_house);
obj_add("Stone", 2, "Pickupables", obj_tree);

SliderBarSize = sprite_get_height(spr_obj_selector)-40-20;
c = make_color_rgb(24,23,21);
c1 = make_color_rgb(89,76,42);
scroll = 0;
inside=false;