var w = ~~(room_width/tw) - 1;
var h = ~~((room_height/2)/th) - 1;
show_debug_message(w);
show_debug_message(h);
var grid = ds_grid_create(w, h);
for(var i = 0; i < w-1; i++){
	for(var j = 0; j < h-1; j++){
		grid[# i, j] = 1;	
	}
}

place_bricks(grid);