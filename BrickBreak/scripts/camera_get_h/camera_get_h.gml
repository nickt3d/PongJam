function camera_get_h() {
	if(instance_exists(CameraController)){
		return	CameraController.vy;
	} else {
		return 0;	
	}


}
