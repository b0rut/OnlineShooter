/// @description Insert description here
// You can write your code in this editor
var eq_id = ds_map_find_value(global.player_equipment, "weapon");
if(i_speed > 0) {
i_index += i_speed; // NEW!


draw_sprite_ext(spr_gunner_walk, i_index , x, y,1+global.ideal_x*0.01,1+global.ideal_y*0.01,leg_direction, c_white, 1);

draw_sprite_ext(spr_gunner_walk,i_index, x-5,y+5,1,1,leg_direction,c_black, 0.8);

}

draw_gun();

draw_sprite_ext(character_spr_index, 0, x,y, 1+global.ideal_x*0.01,1+global.ideal_y*0.01,image_angle, c_white, 1);


//Let's get strech procent values :P 

