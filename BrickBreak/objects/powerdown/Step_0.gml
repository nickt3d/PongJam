switch(pu_type){
	case powerdowns.shrinkpaddle: 
		if(instance_place(x, y, Paddle)){
			Paddle.paddle_size -= 1;
			instance_destroy();
		}
		
	break;
	case powerdowns.paddle_spd: 
		if(instance_place(x, y, Paddle)){
			Paddle.spd_stage -= 1;
			if(Paddle.spd_stage <= 0){
				Paddle.spd_stage = 0;
			}
			Paddle.max_spd = Paddle.spd_stages[Paddle.spd_stage]
			instance_destroy();
		}
		
	break;
	case powerdowns.brick_guard: 
		if(instance_place(x, y, Paddle)){
			Brick.brick_guard = true;
			Brick.guard_cd = 10;
			instance_destroy();
		}
		
	break;
	case powerdowns.wipe_all: 
		if(instance_place(x, y, Paddle)){
			//wipe the paddle power ups
			with(Paddle){
				laser_paddle_stage = 0;
				laser_cd = 0;
				laser_paddle_cd = 0;

				glue_paddle = false;
				glue_paddle_cd = 0;

				spd_stages = [300, 350, 400, 450, 500];
				spd_stage = 2;
				spdup_cd = 0;
				max_spd = spd_stages[spd_stage];
			}
			//wipe the ball power ups
			with(Ball){
				//thru ball vars
				thruball = false;
				thruball_cd = 15;

				//aoe ball vars
				aoe = 0;
				aoe_max = 3;
				aoe_cd = 15;

				//ball spd vars
				spd_stages = [300, 350, 400, 450, 500];
				spd_stage = 1;
				spdup_cd = 0;
				max_spd = 350;	
			}
			instance_destroy();
		}
		
	break;
	case powerdowns.ball_spd: 
		if(instance_place(x, y, Paddle)){
			with(Ball){
				Ball.spd_stage -= 1;
				if(Ball.spd_stage <= 0){
					Ball.spd_stage = 0;
				}
				Ball.max_spd = spd_stages[Ball.spd_stage]	
			}
			instance_destroy();
		}
		
	break;

}

y += vspd*dt;