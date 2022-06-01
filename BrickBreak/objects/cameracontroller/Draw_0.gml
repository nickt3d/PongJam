/// @description Insert description here


//draw borders
draw_set_color(c_blue);
draw_set_alpha(0.5);
draw_rectangle(camera_borders.left, camera_borders.top, camera_borders.right, camera_borders.bottom, 0);
draw_set_color(c_red);
draw_rectangle(camera_borders.left, camera_borders.top, camera_borders.right, camera_borders.bottom, 1);
draw_set_alpha(1);
draw_set_color(c_white);

draw_text(x, y, string(zoom));

