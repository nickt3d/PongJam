function camera_get_w() {
	if(instance_exists(CameraController)){
		return	CameraController.vx;
	} else {
		return 0;	
	}


}
