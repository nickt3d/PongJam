// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_set_view(){
		//set the zoom as a ratio of maximum window size and the default scale of the game(640/360)
		if(dw > dh){
			zoom = (dh/gh); //set this value based on the total maximum window size
			
			aspectratio = dw/dh;
			
			
			vx = ~~(gw*zoom);
			vy = ~~(vx*aspectratio);
			//toppadding = (vy*0.05)/zoom;
			//bottompadding = (vy*0.05)/zoom;
			
			if(vy & 1) {vy++};
			
			
			camera_borders = camera_set_borders();
			show_debug_message(camera_borders);
			window_set_size(vx, vy);

		} else {
			zoom = dh/gh; //set this value based on the total maximum window size
			//show_debug_message("zoom: " + string(dw/gw));
			
			aspectratio = dw/dh;
			
			
			vx = ~~(gw*zoom);
			vy = ~~(vx*aspectratio);
			
			//toppadding = (vy*0.05)/zoom;
			//bottompadding = (vy*0.05)/zoom;
			
			if(vy & 1) {vy++};
			
			//show_debug_message("ar: " + string(aspectratio));
		
			
			
			camera_borders = camera_set_borders();
			//show_debug_message(camera_borders);
			window_set_size(dw, dh);
		}
}