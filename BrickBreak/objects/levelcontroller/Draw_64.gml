/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(hud_fnt);
draw_text(display_get_gui_width()/2, 8, "Score: " + string(levelpoints));
draw_set_halign(fa_left);
draw_text(8, 8, "Lives: ");
for(var i = 0; i < life; i++){
	draw_sprite_ext(ball_spr, 0, 6 + string_width("Lives: ") + i*12, 8 + string_height("L")/2, 1, 1, 0, c_white, 1);
}