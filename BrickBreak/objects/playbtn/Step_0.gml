/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_left) && check_bounds(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height)){
	//stop menu music
	audio_stop_sound(synth9_msc);
	room_goto(game_rm);
	//TODO add a meta game progreession room to controller a talent tree/achievments/unlocks
}