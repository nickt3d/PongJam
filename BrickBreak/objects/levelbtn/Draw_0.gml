/// @description Insert description here
// You can write your code in this editor
if(rm_unlocked){
	draw_set_color(gl);	
} else {
	draw_set_color(c_gray);
}

//draw_rectangle(x, y, x+64, y+64, 1);
draw_set_halign(fa_center);
draw_text(x+38, y, "Level\n"+string(level_name));

draw_set_color(c_white);