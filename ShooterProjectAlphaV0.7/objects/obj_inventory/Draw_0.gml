/// @description Insert description here
// You can write your code in this editor
draw_self();
inventory_draw();
draw_set_font(fnt_item_info_store);
draw_set_color(c_white);
///draw_text_outline(x,y,str,outwidth,outcol,outfidelity)
draw_text(x+36, y+42, global.player_health);
draw_text(x+36, y+74, global.player_armor);
draw_text(x+36, y+106, string(global.player_weight)+" kg");