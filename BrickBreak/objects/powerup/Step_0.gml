if(place_meeting(x, y+vspd*dt, Paddle)){
	show_debug_message("hit paddle");
	switch(pu_type){
		#region paddle size
			case powerups.stretchpaddle: 
				Paddle.paddle_size += 1;
			break;
		#endregion
		#region ball splitter
			case powerups.ballsplit:
			var inst = instance_nearest(x, y, Ball);
				with(instance_create_layer(inst.x, inst.y, "Instances", Ball)){
					show_debug_message("ball created");
					if(inst.state = states.glue){
						g_offset+=2;
						state = states.moving;
						y -= 4;
					} else {
						state = states.moving;
						x += 4;
					}
					spd = Ball.spd;
					if(inst.y < Paddle.y){
						y = Paddle.y-2;	
					}
					dir = Ball.dir + irandom_range(45, 135);
					hspd = lengthdir_x(spd, dir);
					vspd = lengthdir_x(spd, dir);
					x = Ball.x;
					y = Ball.y;
				}
			break;
		#endregion
		#region aoeball
			case powerups.aoeball:
				//make the ball aoe enabled
				var bcount = instance_number(Ball)
				for(var i = 0; i < bcount; i++){
					with(instance_find(Ball, i)){
						aoe += 1;
						if(aoe >= aoe_max){
							aoe = aoe_max;	
						}
						aoe_cd = 15;
					}
				}
			break;
		#endregion
		#region laser paddle
		case powerups.laserpaddle:
			with(Paddle){
				Paddle.laser_paddle_stage += 1;
				if(laser_paddle_stage >= 2){
					//TODO: fire a big laser
				}
				Paddle.laser_paddle_cd += 15;	
			}
		break;
		#endregion
		#region gluepaddle
			case powerups.gluepaddle:
				Paddle.glue_paddle = true;
				Paddle.glue_paddle_cd = 15;
			break;
		#endregion
		#region paddle speed
			case powerups.spdpaddle:
			Paddle.spd_stage += 1;
			if(Paddle.spd_stage >= array_length(Paddle.spd_stages)){
				Paddle.spd_stage =array_length(Paddle.spd_stages)-1;
			}
			Paddle.max_spd = Paddle.spd_stages[Paddle.spd_stage];

			break;
		#endregion
		#region Ball Speed
			case powerups.ballspd:
				Ball.spdup_cd = 15;
				Ball.spd_stage += 1;
				if(Ball.spd_stage >= array_length(Ball.spd_stages)){
					Ball.spd_stage =array_length(Ball.spd_stages)-1;
				}
				Ball.max_spd = Ball.spd_stages[Ball.spd_stage];
			break;
		#endregion
		#region ThruBall
			case powerups.thruball:
				Ball.thruball = true;
				Ball.thruball_cd = 15;
				
			break;
		#endregion
	}
	instance_destroy();
}

y += vspd*dt;

if(y > room_height + 32){
	instance_destroy();	
}