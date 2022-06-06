if(mouse_check_button(mb_left)){
	target_x = mouse_x;
	spd += accel;
	if(spd >= max_spd){
		spd = max_spd;	
	}
} else {
	spd -= accel;
	if(spd <= 0){
		spd = 0;
	}
}
var border = camera_get_borders();

y = border.bottom - ~~(bh*6*CameraController.zoom);

if(paddle_size >= max_paddle_size){
	paddle_size = max_paddle_size;
}
if(paddle_size <= min_paddle_size){
	paddle_size = min_paddle_size;
}

//set the bounding box to the paddle size
image_xscale = paddle_size;

x = approach(x, target_x, spd*dt);


if(x > border.right- sprite_width/2){
	x = border.right - sprite_width/2;
}

if(x < border.left + sprite_width/2){
	x = border.left + sprite_width/2;
}

#region laser paddle
	if(laser_paddle_stage > 0){
		if(laser_cd <= 0){
			instance_create_layer(x-(sprite_width/2)+2, y-sprite_height, "Instances", Laser);
			instance_create_layer(x+(sprite_width/2)-4, y-sprite_height, "Instances", Laser);
			laser_cd = 1;
		} else {
			laser_cd -= dt;
		}
		laser_paddle_cd -= dt;
		if(laser_paddle_cd <= 0){
			laser_paddle_stage -= 1;
			if(laser_paddle_stage <= 0){
				laser_paddle_stage = 0;
				laser_paddle_cd = 0;
			} else {
				laser_paddle_cd = 15;
			}
			
		}
	}
#endregion

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

#region glue paddle
if(glue_paddle){
	glue_paddle_cd -= dt;
	if(glue_paddle_cd <= 0){
		glue_paddle = false;
		glue_paddle_cd = 0;
	}
}

#endregion