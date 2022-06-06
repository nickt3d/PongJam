function check_bounds(xpos, ypos, x1, y1, x2, y2) {
	if( (xpos > x1 && xpos < x2) && (ypos > y1 && ypos < y2) ||
		(xpos < x1 && xpos > x2) && (ypos < y1 && ypos > y2) ||
		(xpos > x1 && xpos < x2) && (ypos < y1 && ypos > y2) ||
		(xpos < x1 && xpos > x2) && (ypos > y1 && ypos < y2)){
		return true;
	} else {
		return false;
	}
}