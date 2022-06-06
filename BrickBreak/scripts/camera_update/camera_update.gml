function camera_update() {
	with(CameraController){
		
		vx = gw/zoom;
		vy = gh/zoom;
			
		var pm = matrix_build_projection_ortho(vx, vy, -100, 10000.0);
		camera_set_proj_mat(camera, pm);
		
		var vm = matrix_build_lookat(cx + cxoffset, cy + cyoffset, -z_dist*zoom, cx + cxoffset, cy + cyoffset, 0, 0, 1, 0);

		camera_set_view_mat(camera, vm);
	}
}