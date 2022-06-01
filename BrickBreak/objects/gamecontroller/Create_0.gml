#macro dt delta_time/1000000
#macro tw 16
#macro th 16
#macro etw 8
#macro eth 8
#macro dw display_get_width()
#macro dh display_get_height()
#macro gw 360
#macro gh 640



enum states {
	idle,
	moving
}

enum powerups {
	stretch,
	ballsplit,
	length
}

enum powerdowns {
	shrink,
	length
}

enum tiledata{
	type,
	name
}

enum cam_mode{
	idle,
	follow,
	mouse_drag,
	mouse_border,
	mouse_peek,
	move_to_target,
	move_to_follow_target
}

window_set_cursor(cr_none);