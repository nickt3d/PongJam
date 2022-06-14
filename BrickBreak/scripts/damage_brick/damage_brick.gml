// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_brick(B){
	with(B){
		if(brick_guard){
			//TODO add a trigger to make a special effect and different sound play
		} else {
			hp -= 1;
			if( hp <= 0){
				increase_score(pts);
			
				with(instance_create_layer(x+sprite_width/2, y, "Instances", Score_Text)){
					t = "+" + string(other.pts);
				}
				var r = random_range(0, 1);
				if(r < 0.15){ // spawn collectables 15% of the time
					r = random_range(0, 1);
					if(r < 0.75){ // spawn power UP 75% of the time a collectable drops
						with(instance_create_layer(x, y, "Instances", PowerUp)){
							pu_type = irandom_range(0, powerups.length);
						}
					} else { // spawn power Down 25% of the time
						with(instance_create_layer(x, y, "Instances", PowerDown)){
							pu_type = irandom_range(0, powerdowns.length);
						}
					}
				}
				instance_destroy(B);
				if(instance_number(Brick) == 0){
					//TODO: add a victory screen
					room_goto(main_menu_rm);	
				}
			}
		}
	}
}