/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x, mouse_y, x,y,x+size,y+16)) {
	if(selected == false) {
		
		selected = true;
		alarm[0] = room_speed*0.3;
		
			}
		
	
	
}


	
if(selected == true) {
	
	// keyboard shortcuts:
caret_move = max(0, caret_move - 1)
if (keyboard_check(vk_left) != keyboard_check(vk_right)) {
    if (caret_move == 0) {
        if (keyboard_check(vk_left)) {
            if (caret > 0) caret -= 1
        } else {
            if (caret < string_length(text)) caret += 1
        }
        caret_move = caret_move_rate
    }
} else caret_move = 0
if (keyboard_check_pressed(vk_home)) caret = 0
if (keyboard_check_pressed(vk_end)) caret = string_length(text)
if (keyboard_check_pressed(vk_delete)) {
    text = string_delete(text, caret + 1, 1)
}
// actual input:
if (keyboard_string != filltext && keyboard_string != "") {
    var n, l, t;
    t = keyboard_string
    l = string_length(t)
    n = 1
    // find where actual input starts
    while ((n <= l) && (string_char_at(t, n) == fillchar)) n += 1
    c = 11 - n
    if (c > 0 && caret > 0) {
        caret -= c
        text = string_delete(text, caret + 1, c)
    }
    c = l - n + 1
    if (c > 0) {
		if(string_length(text) <= txtlimit) {
        text = string_insert(string_copy(t, n, c), text, caret + 1)
        caret += c
		}
    }
}
keyboard_string = filltext
caret = max(0, min(caret, string_length(text)))
}

if(blink > 1) {
blink = 0;	
}