//get the tile layer and convert it to a grid of indexs


//var w = ~~(room_width/tw) - 1;
//var h = ~~((room_height/2)/th) - 1;
//show_debug_message(w);
//show_debug_message(h);
//var grid = ds_grid_create(w, ~~h/2);
//for(var i = 0; i < w-1; i++){
//	for(var j = 0; j < ~~h/2-1; j++){
//		grid[# i, j] = 1;	
//	}
//}

instance_create_layer(room_width/2, room_height/2, "Instances", CameraController);
instance_create_layer(x, y, "Instances", Paddle);
instance_create_layer(x, y, "Instances", Ball);

var smallbrick_grid = set_map_data("smallbricks");
var largebrick_grid = set_map_data("largebricks");
place_bricks(smallbrick_grid, sbw);
place_bricks(largebrick_grid, lbw);



#region level stats
levelpoints = 0;
life = 3;
#endregion