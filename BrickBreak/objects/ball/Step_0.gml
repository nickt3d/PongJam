switch state {
	case states.idle: 
		if(mouse_check_button_pressed(mb_left)){
			state = states.moving;
			spd = max_spd/2;
			randomize();
			dir = irandom_range(45, 135);
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
		} else {
			x = Paddle.x;
			y = Paddle.y - sprite_get_height(paddle_spr)/2;
		}
	break;
	case states.moving:
		var border = camera_get_borders();
		
		#region bounce off room edges
			
			if(x+hspd*dt >= border.right-8 || x+hspd*dt <= border.left+8){
				dir = point_direction(x, y, x-hspd, y+vspd);
				show_debug_message("");
			}
			if(y+vspd*dt <= border.top){
				dir = point_direction(x, y, x+hspd, y-vspd);
			}
		#endregion
		
		#region if ball goes off bottom of screen
		if(y+vspd*dt >= border.bottom){
			if(instance_number(Ball) == 1){
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
			
			if(x > Paddle.x+(~~(Paddle.paddle_size/2-1))*tw){
				dir = point_direction(Paddle.x+(~~(Paddle.paddle_size/2-1))*tw, Paddle.y, x, y);
			} else if(x < Paddle.x-(~~(Paddle.paddle_size/2-1))*tw){
				dir = point_direction(Paddle.x+(~~(Paddle.paddle_size/2-1))*tw, Paddle.y, x, y);
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
		}
		#endregion
		
		hspd = lengthdir_x(spd, dir);
		vspd = lengthdir_y(spd, dir);
	break;
	
}

x += hspd*dt;
y += vspd*dt;