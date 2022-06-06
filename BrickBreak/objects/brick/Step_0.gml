if(guard_cd <= 0){
	brick_guard = false;
	guard_cd = 0;
} else {
	guard_cd -= dt;	
}