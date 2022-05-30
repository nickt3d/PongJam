switch state {
	case states.idle: 
		if(mouse_check_button_pressed(mb_left)){
			state = states.moving;
			spd = max_spd/2;
			dir = irandom_range(45, 135);
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
		} else {
			x = Paddle.x;
			y = Paddle.y - sprite_get_height(paddle_spr)/2;
		}
	break;
	case states.moving:
		#region bounce off room edges
			if(x+hspd*dt >= room_width-GameController.border || x+hspd*dt <= GameController.border){
				dir = point_direction(x, y, x-hspd, y+vspd);	
			}
			if(y+vspd*dt <= GameController.border){
				dir = point_direction(x, y, x+hspd, y-vspd);	
			}
		#endregion
		
		#region if ball goes off bottom of screen
		if(y+vspd*dt >= room_height+GameController.border){
			if(instance_number(Ball) == 1){
				GameController.life -= 1;
				state = states.idle;	
			} else {
				show_debug_message("kill ball");
				instance_destroy();
			}
		}
		#endregion
		
		#region hitting bricks
		if(place_meeting(x, y+vspd*dt, Brick)){
			with(instance_place(x, y+vspd*dt, Brick)){
				hp -= 1;	
			}
			dir = point_direction(x, y, x+hspd, y-vspd);
		}
		if(place_meeting(x+hspd *dt, y, Brick)){
			with(instance_place(x+hspd *dt, y, Brick)){
				hp -= 1;	
			}
			dir = point_direction(x, y, x-hspd, y+vspd);
		}
		#endregion
		
		#region paddle collision
		if(place_meeting(x, y+vspd*dt, Paddle)){
			var offset = sign(Paddle.x - x)*tw*Paddle.paddle_size/2;
			dir = point_direction(Paddle.x + offset, Paddle.y, x, y);
			spd += 5;
			if(spd >= max_spd){
				spd = max_spd;	
			}
		}
		#endregion
		
		hspd = lengthdir_x(spd, dir);
		vspd = lengthdir_y(spd, dir);
	break;
	
}

x += hspd*dt;
y += vspd*dt;