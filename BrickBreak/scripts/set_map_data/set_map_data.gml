///uses a tile layer to make map tile data returns as a grid
function set_map_data(tilelayer) {
	if(tilelayer == "smallbricks"){
		rw = ~~(room_width/sbw);
	} else {
		rw = ~~(room_width/lbw);
	}
	
	rh = ~~(room_height/bh);

	var levelgrid = ds_grid_create(rw, rh);
	var lay_id = layer_tilemap_get_id(tilelayer);
	//can add other layers of tile to parse later

	//create the ground layer for this map
	for (var i = 0; i < rw; i++) {
	    for (var j = 0; j < rh; j++) {
			//tile data map
			var tiledatamap = ds_map_create();
			//tile index
			var data = tilemap_get(lay_id, i, (rh-1)-j);
			var tt = tile_get_index(data)-1;
		
			tiledatamap[? tiledata.type] = tt;
			//show_debug_message(tt);
			
			levelgrid[# i, j] = tt;
			
		}
	}

	return levelgrid
}
