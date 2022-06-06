/// @description Insert description here
// You can write your code in this editor

#region draw the brick
	if(brick_guard){
		draw_sprite_ext(ghost_spr, hp-1, x, y, 1, 1, 0, color, 1);
	} else {
		draw_sprite_ext(sprite_index, hp-1, x, y, 1, 1, 0, color, 1);
	}
		
#endregion

#region show the stored power up in this brick?
	if(poweredup){
		
	}
#endregion
