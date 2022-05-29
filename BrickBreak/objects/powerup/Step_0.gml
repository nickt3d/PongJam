switch(pu_type){
	case powerups.stretch: 
		if(instance_place(x, y, Paddle)){
			Paddle.paddle_size += 1;
			instance_destroy();
		}	
	break;
	case powerups.ballsplit: 
		if(instance_place(x, y, Paddle)){
			with(instance_create_layer(x, y, layer, Ball)){
				state = states.moving;
				spd = Ball.spd;
				dir = Ball.dir + irandom_range(45, 135);
				hspd = lengthdir_x(spd, dir);
				vspd = lengthdir_x(spd, dir);
				x = Ball.x;
				y = Ball.y;
			}
			instance_destroy();
		}	
	break;
}

y += vspd*dt;