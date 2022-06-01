function camera_drag() {
	var mx = mouse_x;
	var my = mouse_y;
	if(mouse_check_button(mb_left)){
		cx += (mxp - mx);
		cy += (myp - my);
	} else {
		mxp = mx;
		myp = my;
	}


}
