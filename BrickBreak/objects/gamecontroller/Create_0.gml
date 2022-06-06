#macro dt delta_time/1000000
//small brick width
#macro sbw 16
//large brick width
#macro lbw 32
//brick height
#macro bh 12
//paddle width
#macro pw 8
#macro dw display_get_width()
#macro dh display_get_height()
#macro gw 360
#macro gh 640



enum states {
	idle,
	moving,
	glue
}

enum powerups {
	ballsplit,
	thruball,
	aoeball,
	laserpaddle,
	ballspd,
	gluepaddle,
	stretchpaddle,
	spdpaddle,
	length
}

enum powerdowns {
	shrinkpaddle,
	paddle_spd,
	ball_spd,
	wipe_all,
	brick_guard,
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