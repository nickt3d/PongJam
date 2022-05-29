switch(pu_type){
	case powerups.stretch: 
		if(instance_place(x, y, Paddle)){
			Paddle.paddle_size -= 1;
			instance_destroy();
		}
		
	break;
}

y += vspd*dt;