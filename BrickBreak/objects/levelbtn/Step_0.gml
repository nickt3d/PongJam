/// @description Insert description here
// You can write your code in this editor
if(button_press() && rm_unlocked){
	audio_stop_sound(synth9_msc);
	room_goto(asset_get_index(rm_index));
}

