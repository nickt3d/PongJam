/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, rot, c_white, 1);

if(state = states.glue){
	draw_sprite_ext(arrow_spr, 0, x+lengthdir_x(6, dir) ,y +lengthdir_y(6, dir), 1, 1, dir, c_white, 1);	
}

if(state == states.idle){
	if(ball_release_cooldown != 0){
		draw_set_font(countdown_fnt);
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2, string(~~(ball_release_cooldown+0.25)));
		draw_set_halign(fa_left);
	}
}