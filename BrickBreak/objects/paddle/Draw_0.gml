/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < paddle_size; i++){
	if(i == 0){
		draw_sprite(sprite_index, 0, x-paddle_size*pw/2+pw/2, y);
		if(laser_paddle_stage > 0){
			draw_sprite_ext(paddle_turret_spr, 0, x-paddle_size*pw/2+pw/2+2, y-sprite_height, -1, 1, 0, c_white, 1);	
		}
	} else if (i == paddle_size-1){
		draw_sprite(sprite_index, 2, x-paddle_size*pw/2+i*pw+pw/2, y);
		if(laser_paddle_stage > 0){
			draw_sprite(paddle_turret_spr, 0, x-paddle_size*pw/2+i*pw+pw/2-2, y-sprite_height);	
		}
	} else {											   
		draw_sprite(sprite_index, 1, x-paddle_size*pw/2+i*pw+pw/2, y);
	}

}

if(glue_paddle){
	draw_sprite(magnet_spr, 0, x, y + sprite_height+4)	
}



//draw_sprite_ext(sprite_index, 1, x, y, image_xscale, 1, 0, c_white, 1);

//draw_set_color(c_red);
//draw_rectangle(x-(paddle_size*8)/2, y-4, x+(paddle_size*8)/2, y+4, 1);
//draw_set_color(c_white);

