/// @description Insert description here
// You can write your code in this editor
caret_flash = 0
caret_flash_rate = 15
caret_move = 0
caret_move_rate = 7
text = "" // current text
caret = 0 // caret position
fillchar = "`" // used as filler character in input handling.
filltext = string_repeat(fillchar, 10)
selected=false;
size=90;
blink = false;
blink_speed = room_speed*0.3;
color = make_color_rgb(17,17,17);
txtlimit=16;