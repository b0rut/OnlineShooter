/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_textbox);
draw_set_color(color);
draw_rectangle(x-8,y-1,x+size, y+13, 0);
draw_set_color(c_black);
draw_rectangle(x-8,y-1,x+size, y+13, 1);
draw_set_color(c_white)
var i, h, ptext;
// sad truth: There is no way you can display the typed "#"
// characters and get string width of those.
ptext = string_replace_all(text, "#", "�")
if(selected==false) {
draw_text(x-3, y+3, "username");
} else if(selected==true) {
draw_text(x-3, y+3, ptext)
}
// add those useless fancy lines below the input:

i = string_width(string_copy(ptext, 1, caret))
h = string_height("\\")
if(selected==true) {
	if(blink==true) {
draw_line(x  -3 + i, y+3, x -3 + i, y+3 + h)
	}
}
i = string_width(text)
//draw_line(x - 3, y + h + 2, x + i + 2, y + h + 2)
//draw_line(x - 3, y + h + 4, x + i + 10, y + h + 4)

// key handling:
if (keyboard_check_pressed(vk_enter)) {
   
}