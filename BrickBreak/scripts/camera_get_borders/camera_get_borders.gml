// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_get_borders(){
	if(instance_exists(CameraController)){
		return CameraController.camera_borders;
	}
}