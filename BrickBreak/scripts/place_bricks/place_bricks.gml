// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_bricks(g){
	for(var i = 0; i < ds_grid_width(g); i++){
		for(var j = 0; j < ds_grid_height(g); j++){
			if(g[# i, j] = 1){
				instance_create_layer(tw + tw*i, th+th*j, "Instances", Brick);
			}
		}
	}
}