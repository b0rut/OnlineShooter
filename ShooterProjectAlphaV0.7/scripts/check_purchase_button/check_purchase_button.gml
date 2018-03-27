//Returns item id+
var counter = 0;
if(mouse_check_button_pressed(mb_left)) {
var x_offset = 8;
var y_offset = 43;
var x_split = 53;
var y_split = 50;
var rec_w = 46;
var rec_h = 16;

var xx = x_offset;
var yy = y_offset + scroll;
var mx = mouse_x -x;
var my = mouse_y -y -40;

show_debug_message("mouse pos: "+ string(mx)+ ","+string(my));
show_debug_message("rec startpos: "+string(xx+23)+","+string(yy-5) +" rec endpos: "+string(xx+23+rec_w)+","+string((yy-5)+rec_h));
for(var i=0; i < ds_list_size(global.shop); i++) {
	
	draw_rectangle_color(xx+23,yy+rec_h ,xx+23+rec_w, yy-16+rec_h,c_red, c_red,c_red, c_red, 1 )

		xx = x_offset +( (rec_w+x_split) * counter); 
		//show_debug_message("rec pos: "+string(xx+23)+","+string(yy-16+rec_h));
		
		if(point_in_rectangle(mx, my, xx+23,yy-5 ,xx+23+rec_w, (yy-5)+rec_h)) {
			
			
		}
	

counter++;
	if((i+1)%3 == 0) {
			
			yy+= rec_h + y_split;
		    counter = 0;
		}
}

}