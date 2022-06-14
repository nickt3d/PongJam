// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function button_press(){
return mouse_check_button_released(mb_left) && check_bounds(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height);
}