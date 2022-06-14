switch state {
	#region idle
	case states.idle: 
		if(mouse_check_button_pressed(mb_left) && ball_release_cooldown == 0){
			state = states.moving;
			spd = max_spd/2;
			randomize();
			dir = irandom_range(45, 135);
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
			if(instance_exists(LevelController)){
				LevelController.time_started = true;
			}
		} else {
			x = Paddle.x;
			y = Paddle.y - sprite_get_height(paddle_spr)/2;
			
			ball_release_cooldown -= dt;
			if(ball_release_cooldown  <= 0){
				ball_release_cooldown = 0;	
			}
		}
	break;
	#endregion
	#region moving
	case states.moving:
		var border = camera_get_borders();
		
		#region bounce off room edges
			
			if(x+hspd*dt >= border.right-4 || x+hspd*dt <= border.left+4){
				dir = point_direction(x, y, x-hspd, y+vspd);
			}
			if(y+vspd*dt <= border.top){
				dir = point_direction(x, y, x+hspd, y-vspd);
			}
		#endregion
		
		#region if ball goes off bottom of screen
		if(y+vspd*dt >= border.bottom){
			if(instance_number(Ball) == 1){
				hspd = 0;
				vspd = 0;
				LevelController.life -= 1;
				state = states.idle;	
			} else {
				instance_destroy();
			}
		}
		#endregion
		
		#region borderbricks
			if(place_meeting(x, y+vspd*dt, Border_Brick)){
				dir = point_direction(x, y, x+hspd, y-vspd);
			}
			if(place_meeting(x+hspd *dt, y, Border_Brick)){
				dir = point_direction(x, y, x-hspd, y+vspd);
			}
		#endregion
		
		#region hitting bricks
		if(instance_exists(Brick)){
			if(place_meeting(x, y+vspd*dt, Brick)){
				with(instance_place(x, y+vspd*dt, Brick)){
					#region aoe ball
					switch(other.aoe){
						#region small aoe
							case 1: //check the cardinal directions for other bricks
								if(instance_place(x, y + bh*1.5, Brick)){
									damage_brick(instance_place(x, y + bh*1.5, Brick));
								}
								if(instance_place(x, y - bh/2, Brick)){
									damage_brick(instance_place(x, y - bh/2, Brick));
								}
								if(instance_place(x + (sprite_get_width(sprite_index)*1.5), y, Brick)){
									damage_brick(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y, Brick));
								}
								if(instance_place(x - 8, y, Brick)){
									damage_brick(instance_place(x-8, y, Brick));
								}
						
							break
						#endregion
						#region medium aoe
							case 2: //check the cardinal directions for another brick
								if(instance_place(x, y+ bh*1.5, Brick)){
									damage_brick(instance_place(x, y + bh*1.5, Brick));
								}
								if(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y + bh*1.5, Brick)){
									damage_brick(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y + bh*1.5, Brick));
								}
								if(instance_place(x- 8, y + bh*1.5, Brick)){
									damage_brick(instance_place(x-8, y + bh*1.5, Brick));
								}
								if(instance_place(x, y - bh/2, Brick)){
									damage_brick(instance_place(x, y - bh/2, Brick));
								}
								if(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y - bh/2, Brick)){
									damage_brick(instance_place(x+ (sprite_get_width(sprite_index)*1.5), tiledata.type - bh/2, Brick));
								}
								if(instance_place(x- 8, y - bh/2, Brick)){
									damage_brick(instance_place(x- 8, y - bh/2, Brick));
								}
								if(instance_place(x + (sprite_get_width(sprite_index)*1.5), y, Brick)){
									damage_brick(instance_place(x + (sprite_get_width(sprite_index)*1.5), y, Brick));
								}
								if(instance_place(x - 8, y, Brick)){
									damage_brick(instance_place(x - 8, y, Brick));
								}				
							break;
						#endregion
						#region large aoe
							case 3: //check the cardinal directions for another brick
								if(instance_place(x, y + bh*2.5, Brick)){
									damage_brick(instance_place(x, y + bh*1.5, Brick));
								}
								if(instance_place(x, y - bh*1.5, Brick)){
									damage_brick(instance_place(x, y + bh*1.5, Brick));
								}
								var ts = instance_place(x-8, y, Brick);
								if(instance_exists(ts)){
									if(instance_place(x - 8 - ts.sprite_width, y - bh*1.5, Brick)){
										damage_brick(instance_place(x - 8 - ts.sprite_width, y - bh*1.5, Brick));
									}
								}
								ts = noone;
								ts = instance_place(x+sprite_width+8, y, Brick);
								if(instance_exists(ts)){
									if(instance_place(x +sprite_width + ts.sprite_width, y - bh*1.5, Brick)){
										damage_brick(instance_place(x - 8 - ts.sprite_width, y - bh*1.5, Brick));
									}
								}
								if(instance_place(x, y + bh*1.5, Brick)){
									damage_brick(instance_place(x, y + bh*1.5, Brick));
								}
								if(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y + bh*1.5, Brick)){
									damage_brick(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y + bh*1.5, Brick));
								}
								if(instance_place(x- 8, y + bh*1.5, Brick)){
									damage_brick(instance_place(x-8, y + bh*1.5, Brick));
								}
								if(instance_place(x, y - bh/2, Brick)){
									damage_brick(instance_place(x, y - bh/2, Brick));
								}
								if(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y - bh/2, Brick)){
									damage_brick(instance_place(x+ (sprite_get_width(sprite_index)*1.5), y - bh/2, Brick));
								}
								if(instance_place(x- 8, y - bh/2, Brick)){
									damage_brick(instance_place(x- 8, y - bh/2, Brick));
								}
								if(instance_place(x + (sprite_get_width(sprite_index)*1.5), y, Brick)){
									damage_brick(instance_place(x + (sprite_get_width(sprite_index)*1.5), y, Brick));
								}
								if(instance_place(x - 8, y, Brick)){
									damage_brick(instance_place(x - 8, y, Brick));
								}				
							break;
						#endregion
					}
					#endregion
				
					//damage the brick the ball hit
					damage_brick(self);
				}
			
				//if thru ball(just ignore the collisions
				if(instance_exists(Brick)){
					if(!thruball && !Brick.brick_guard){
						dir = point_direction(x, y, x+hspd, y-vspd);
					}
				}
			} else if(place_meeting(x+hspd *dt, y, Brick)){
				with(instance_place(x+hspd *dt, y, Brick)){
					damage_brick(self);
				}
				if(instance_exists(Brick)){
					if(!thruball && !Brick.brick_guard){
						dir = point_direction(x, y, x-hspd, y+vspd);
					}
				}
			}
		}
		#endregion
		
		#region paddle collision
		if(place_meeting(x, y+vspd*dt, Paddle)){
			if(x > Paddle.x+(~~(Paddle.paddle_size/2-1))*pw){
				dir = point_direction(Paddle.x+(~~(Paddle.paddle_size/2-1))*pw, Paddle.y, x, y);
			} else if(x < Paddle.x-(~~(Paddle.paddle_size/2-1))*pw){
				dir = point_direction(Paddle.x+(~~(Paddle.paddle_size/2-1))*pw, Paddle.y, x, y);
			} else {
				dir = point_direction(Paddle.x, Paddle.y, x, y);
			}			
			
			
			if(dir > 150){
				dir = 150;	
			}
			
			if(dir < 30){
				dir = 30;	
			}
			
			
			debug_dir = dir;

			spd += 5;
			if(spd >= max_spd){
				spd = max_spd;	
			}
				
			if(Paddle.glue_paddle){
				state = states.glue;
				g_offset = Paddle.x - x;
			}
		}
		#endregion
		
		hspd = lengthdir_x(spd, dir);
		vspd = lengthdir_y(spd, dir);
	break;
	
	case states.glue: 
		if(mouse_check_button_pressed(mb_left)){
			state = states.moving;	
		}
	break;
	#endregion
}

#region ball rotation
if(state == states.glue || state == states.idle){
	rot_spd = 0;
} else {
	rot_spd = hspd/5;
	rot += rot_spd*dt;
	if(rot < 0){
		rot = 360 + rot;
	}
	if(rot > 360){
		rot =  rot - 360;	
	}
}
#endregion
x += hspd*dt;
y += vspd*dt;

#region spawn particles
#endregion

#region power up cooldowns
	if(aoe_cd > 0){
		aoe_cd -= dt;
	} else {
		aoe_cd = 0;
		aoe = 0;
	}
	
	if(thruball){
		thruball_cd -= dt;
	} else {
		thruball_cd = 0;
		thruball = false;
	}
	
	#region spd stages
		if(spdup_cd <=0){
			spd_stage -= 1;
			if(spd_stage <= 0){
				spd_stage = 0;	
			}
			spdup_cd = 15;
		} else {
			spdup_cd -= dt;	
		}
		if(spdup_cd <= 0){
			spdup_cd = 0;	
		}
		max_spd = spd_stages[spd_stage];
	#endregion
#endregion
