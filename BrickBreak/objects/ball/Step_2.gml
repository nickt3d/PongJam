/// @description Insert description here
// You can write your code in this editor
if (state == states.idle){
	x = Paddle.x;
	y = Paddle.y - sprite_get_height(paddle_spr)/2-sprite_height/2;	
}

//debug
draw_set_color(c_red);
draw_line(Paddle.x, Paddle.y,Paddle.x + lengthdir_x(55, debug_dir), Paddle.y + lengthdir_y(55, debug_dir));
draw_set_color(c_white)