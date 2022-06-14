// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_bricks(g, tw){
	if(tw == lbw){
		for(var i = 0; i < ds_grid_width(g); i++){
			for(var j = 0; j < ds_grid_height(g); j++){
				switch(g[# i, j]){
					case 0: with(instance_create_layer(tw*i + 4, 118+bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
						hp = 1;
						pts = 5;
						color = cyan;
					}
					break;
				
					case 1:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 2;
							pts = 10;
							color = cyan;
						}
					break;
					case 2:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 3;
							pts = 15;
							color = cyan;
						}
					break;
					case 3: with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
						hp = 1;
						pts = 10;
						color = pn;
					}
					break;
				
					case 4:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 2;
							pts = 15;
							color = pn;
						}
					break;
					case 5:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 3;
							pts = 20;
							color = pn;
						}
					break;
					case 6: with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
						hp = 1;
						pts = 15;
						color = gl;
					}
					break;
				
					case 7:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 2;
							pts = 20;
							color = gl;
						}
					break;
					case 8:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickLg)){
							hp = 3;
							pts = 30;
							color = gl;
						}
					break;
				}
			}
		}
	} else {
		for(var i = 0; i < ds_grid_width(g); i++){
			for(var j = 0; j < ds_grid_height(g); j++){
				switch(g[# i, j]){
					case 0:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 1;
							pts = 20;
							color = cyan;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 1:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 2;
							pts = 10;
							color = cyan;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 2:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 3;
							pts = 20;
							color = cyan;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 3:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 1;
							pts = 30;
							color = pn;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 4:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 2;
							pts = 30;
							color = pn;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 5:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 3;
							pts = 40;
							color = pn;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 6:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 1;
							pts = 30;
							color = gl;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 7:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 2;
							pts = 40;
							color = gl;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
					case 8:
						with(instance_create_layer(tw*i + 4, bh*(ds_grid_height(g)-j-1), "BrickLayer", BrickSm)){
							hp = 3;
							pts = 50;
							color = gl;
							ghost_spr = smallbrick_ghost_spr;
						}
					break;
				}
			}
		}
	}
}