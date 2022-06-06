/// @description Insert description here
// You can write your code in this editor

if(life < 0){
	room_restart();	
}

if(instance_number(Brick) == 0){
	//win
	room_goto(main_menu_rm)
}