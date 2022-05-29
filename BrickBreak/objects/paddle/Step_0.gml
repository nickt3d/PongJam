x = mouse_x;
y = room_height - 32;

if(x >= room_width + sprite_width/2){
	x =	 room_width + sprite_width/2;
}
if(x <= 0 - sprite_width/2){
	x =	 0 - sprite_width/2;
}

if(paddle_size >= max_paddle_size){
	paddle_size = max_paddle_size;
}
if(paddle_size <= min_paddle_size){
	paddle_size = min_paddle_size;
}

//set the bounding box to the paddle size
image_xscale = paddle_size;