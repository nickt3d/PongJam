/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < paddle_size; i++){
	if(i == 0){
		draw_sprite(sprite_index, 0, x-paddle_size*pw/2+pw/2, y);
	} else if (i == paddle_size-1){
		draw_sprite(sprite_index, 2, x-paddle_size*pw/2+i*pw+pw/2, y);
	} else {											   
		draw_sprite(sprite_index, 1, x-paddle_size*pw/2+i*pw+pw/2, y);
	}

}

//draw_sprite_ext(sprite_index, 1, x, y, image_xscale, 1, 0, c_white, 1);

draw_set_color(c_red);
draw_rectangle(x-(paddle_size*8)/2, y-4, x+(paddle_size*8)/2, y+4, 1);
draw_set_color(c_white);

