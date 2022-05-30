#macro dt delta_time/1000000
#macro tw 16
#macro th 16

points = 0;
life = 3;
border = 8;

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

window_set_cursor(cr_none);