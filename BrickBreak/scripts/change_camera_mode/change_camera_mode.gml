///@description change_camera_mode
///@arg state
///@arg target_x
///@arg target_y
function change_camera_mode() {

	with(CameraController){
		state = argument[0];
		switch(state){
			case cam_mode.move_to_target:
				target_x = argument[1];
				target_y = argument[2];
			break;		
			case cam_mode.follow:
			case cam_mode.move_to_follow_target:
				follow = argument[1];
			break;
		}
	}


}
