function camera_get_x() {
	if(instance_exists(CameraController)){
		return	CameraController.cx;
	} else {
		return 0;	
	}


}
