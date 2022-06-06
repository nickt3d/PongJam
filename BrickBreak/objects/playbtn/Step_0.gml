/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_left) && check_bounds(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height)){
	room_goto(test_rm);
}