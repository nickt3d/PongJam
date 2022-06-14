/// @description Insert description here
// You can write your code in this editor

if(life < 0){
	room_restart();	
}

if(instance_number(Brick) == 0){
	//win
	room_goto(main_menu_rm)
}

#region playing music
	if(audio_is_playing(music)){
		
	} else {
		music = choose(synth1_msc, synth2_msc, synth3_msc, synth4_msc, synth5_msc, synth6_msc, synth7_msc, synth8_msc, synth9_msc);
		audio_play_sound(music, 1, 0);
	}
#endregion

#region experience
	if(xp >= xp_to_next){
		xp = xp - xp_to_next;
		lvl += 1;
		xp_to_next += 50;
	}
#endregion

if(time_started){
	time += dt;
}