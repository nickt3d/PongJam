/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

draw_set_font(main_fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x + sprite_width/2, y+sprite_height/2, "Back");
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(global.debug){
	draw_rectangle(x, y, x+sprite_width, y+sprite_height, 1);
}