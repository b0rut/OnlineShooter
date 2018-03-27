
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x+xxx+92+100-8,y+yyy+65-24+scroll, x+xxx+12+92+100+8, y+yyy+130-21+scroll))  {
	inside=true;
if(mouse_check_button_pressed(mb_left)) {

	

drag_off_y=device_mouse_y_to_gui(0)-(y+yyy+100-24+scroll)
drag1=true;	


	
}
if(drag1==true) {
if(mouse_check_button(mb_left) ) {

scroll += device_mouse_y_to_gui(0)-(y+yyy+100-24+scroll)-drag_off_y;
scroll = clamp(scroll, 0, 65);
}
else {
drag1=false;

}

}

}
else {

inside=false;
	
}