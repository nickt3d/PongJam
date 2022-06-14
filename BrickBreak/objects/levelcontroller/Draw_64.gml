/// @description Insert description here
// You can write your code in this editor
yy = 64;
draw_set_halign(fa_center);
draw_set_font(hud_fnt);
draw_text(display_get_gui_width()/2, 8, "Score: " + string(levelpoints));
draw_set_halign(fa_left);
draw_text(8, yy+8, "Lives: ");
for(var i = 0; i < life; i++){
	draw_sprite_ext(ball_spr, 0, 8 + string_width("Lives: ") + i*12, yy+8 + string_height("L")/2, 1, 1, 0, c_white, 1);
}
var t = time_format_min(time);
draw_text(gw - 96,yy+8, "Time: " + string(t));

draw_set_color(c_gray);
draw_rectangle(0, yy+12+string_height("L"), gw, yy+12+string_height("L")+12, 0);
draw_set_color(gl);
draw_rectangle(0, yy+12+string_height("L"), xp/xp_to_next*gw, yy+12+string_height("L")+12, 0);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(gw/2, yy+13+string_height("L"), "LEVEL: "+string(lvl));
draw_set_halign(fa_left);

draw_set_color(c_gray);
draw_rectangle(0, 0, gw, 64, 0);
draw_text(gw/2, 8, "BANNER ADS");
draw_set_color(c_white);