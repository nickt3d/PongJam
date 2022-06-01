function camera_follow() {
	cx = lerp(cx, target.x, smoothing_level);
	cy = lerp(cy, target.y, smoothing_level);
}