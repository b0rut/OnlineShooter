/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var x_offset = 10;
var y_offset = 615;
//Draws money hud

draw_sprite(spr_money_pannel_hud, 0, 10, 0);

//Draws player hud
draw_set_font(fnt_main);
draw_set_color(c_white);
draw_sprite(spr_player_hud, 0, x_offset, y_offset);
draw_sprite(spr_hud_guns, 0, x_offset + 3, y_offset+ 40);
draw_sprite(spr_hud_icons, 0, x_offset+23, y_offset+8); //Ammo
draw_text(x_offset+60, y_offset+12, string(global.primary_bullets) + "/"+string(global.secondary_bullets)); 
draw_sprite(spr_hud_icons, 1, x_offset + 170, y_offset+ 50); //Health
draw_text( x_offset + 220, y_offset+ 55, global.player_health);

draw_sprite(spr_hud_icons, 2, x_offset + 170, y_offset+ 95); //Armor
draw_text( x_offset + 220, y_offset+ 100, global.player_armor);
draw_set_color(c_white);
draw_text_transformed(100,100, "8",1,1.4,90);

draw_game_inventory(425,700);