/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_text(display_get_gui_width()/2, 8, "Score: " + string(points));
draw_set_halign(fa_left);
draw_text(8, 8, "Lives: " + string(life));