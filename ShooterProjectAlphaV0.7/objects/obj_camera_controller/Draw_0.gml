/// @description Insert description here
// You can write your code in this editor
if(grid==1) {



draw_set_color(c_black);
draw_set_alpha(1);
for(var i=0; i < room_width/32; i++) {

	draw_line(( i * 32), 0, (i*32), room_height);
	
}
for(var j=0; j < room_height/32; j++) {

	draw_line(0, (j*32), room_width,(j*32));
	
}
}


draw_set_color(c1);
draw_rectangle(0,0,room_width,room_height,1);