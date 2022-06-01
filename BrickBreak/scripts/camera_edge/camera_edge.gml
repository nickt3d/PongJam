///@description move the camera when it is on the edge of the current view
function camera_edge() {
	if(!point_in_rectangle(mouse_x, mouse_y, cx+(vx*0.1), cy+(vy*0.1), cx+(vx*0.9), cy+(vy*0.9))){
		cx = lerp(cx, mouse_x-(vx/2), 0.05);
		cy = lerp(cy, mouse_y-(vy/2), 0.05);
	}


}
