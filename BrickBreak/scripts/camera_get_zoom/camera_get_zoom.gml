function camera_get_zoom() {
	if(instance_exists(CameraController)){
		return	CameraController.zoom;
	} else {
		return 1;	
	}
}