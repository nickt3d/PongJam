///uses a tile layer to make map tile data returns as a grid
function set_map_data() {
	rw = room_width/etw;
	rh = room_height/eth;

	var levelgrid = ds_grid_create(rw, rh);
	var lay_id = layer_tilemap_get_id("brick_layer");
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
		
			//switch (tt){
			//	case tiletype.stone: 
			//		tiledatamap[? tiledata.name] = "stone";	
			//		tiledatamap[? tiledata.type] = tiletype.stone;
			//	break;
			//	case tiletype.grass: 
			//		tiledatamap[? tiledata.name] = "grass";	
			//		tiledatamap[? tiledata.type] = tiletype.grass;
			//	break;
			//	case tiletype.dirt:	 
			//		tiledatamap[? tiledata.name] = "dirt";
			//		tiledatamap[? tiledata.type] = tiletype.dirt;
			//	break;
			//	case tiletype.water: 
			//		tiledatamap[? tiledata.name] = "water";	
			//		tiledatamap[? tiledata.type] = tiletype.water;
			//	break;
			//	default: 
			//		tiledatamap[? tiledata.name] = "none"; 
			//		tiledatamap[? tiledata.type] = tiletype.none;
			//	break;	
			//}
			
			if(tt == 46) {
				levelgrid[# i, j] = 1;
			} else {
				levelgrid[# i, j] = 0;
			}
		}
	}

	return levelgrid
}
