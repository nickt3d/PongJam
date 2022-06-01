function camera_move_to_follow_target() {
	cx = lerp(cx, follow.x, 0.1);
	cy = lerp(cy, follow.y, 0.1);

	if(point_distance(cx, cy, follow.x, follow.y) < 1){
		state = cam_mode.follow;	
	}


}
