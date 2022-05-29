/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < paddle_size; i++){
	if(i == 0){
		draw_sprite(sprite_index, 0, x-paddle_size*8/2-8, y);
	} else if (i == paddle_size-1){
		draw_sprite(sprite_index, 2, x-paddle_size*8/2-8+i*16, y);
	} else {
		draw_sprite(sprite_index, 1, x-paddle_size*8/2-8+i*16, y);
	}

}