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

y = border.bottom - ~~(th*CameraController.zoom);

if(paddle_size >= max_paddle_size){
	paddle_size = max_paddle_size;
}
if(paddle_size <= min_paddle_size){
	paddle_size = min_paddle_size;
}

//set the bounding box to the paddle size
image_xscale = paddle_size;

x = approach(x, target_x, spd*dt);



if(x > border.right){
	x = border.right;
}

if(x < border.left){
	x = border.left;
}