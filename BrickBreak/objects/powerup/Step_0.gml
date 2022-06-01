if(instance_place(x, y, Paddle)){
	switch(pu_type){
		case powerups.stretch: 
			Paddle.paddle_size += 1;
			//show_debug_message("grow paddle");
			instance_destroy();
		break;
		case powerups.ballsplit: 
			with(instance_create_layer(x, y, layer, Ball)){
				state = states.moving;
				spd = Ball.spd;
				dir = Ball.dir + irandom_range(45, 135);
				hspd = lengthdir_x(spd, dir);
				vspd = lengthdir_x(spd, dir);
				x = Ball.x;
				y = Ball.y;
			}
			//show_debug_message("ball split")
			instance_destroy();

		break;
	}
}	
y += vspd*dt;