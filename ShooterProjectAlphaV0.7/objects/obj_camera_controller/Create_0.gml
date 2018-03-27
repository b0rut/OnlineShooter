/// @description Insert description here
// You can write your code in this editor

//Added thing for changing stuff
target_view = 0;

//Initiatlize "click" positions
click_x = 0;
click_y = 0;
c1=make_color_rgb(89,76,42);
//Initialize "zoom" 
zoom_level = 1;

//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(target_view, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(target_view, 1024);
view_set_hport(target_view, 768);

//Resize and center
window_set_rectangle((display_get_width() - view_wport[target_view]) * 0.5, (display_get_height() - view_hport[target_view]) * 0.5, view_wport[target_view], view_hport[target_view]);
surface_resize(application_surface,view_wport[target_view],view_hport[target_view]);


//Camera creation

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(0, 0, 1024, 768, 0, -1, -1, -1, 0, 0);

//Set view0 to use the camera "camera"
view_set_camera(target_view, camera);

//Bind the bad screenshake
//camera_set_begin_script(view_camera[target_view],-1);

//Zoom variables
zoom_level = 1.25;
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

grid = 1;