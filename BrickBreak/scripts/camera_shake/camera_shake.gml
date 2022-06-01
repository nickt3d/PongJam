///camera_shake(intensity)
function camera_shake(argument0) {

	var s = argument0;
	var xx = choose(-1, 1)*s;
	var yy = choose(-1, 1)*s;

	if(instance_exists(CameraController)){
		with(CameraController){
			cx += xx;
			cy += yy;
			var vm = matrix_build_lookat(cx, cy, 0 - z_dist*zoom, cx, cy, 0 + z_dist*zoom, 0, 1, 0);
			camera_set_view_mat(camera, vm);
		}
	}


}
