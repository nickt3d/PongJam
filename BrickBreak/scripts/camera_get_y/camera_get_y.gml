function camera_get_y() {
	if(instance_exists(CameraController)){
		return	CameraController.cy;
	} else {
		return 0;	
	}


}
