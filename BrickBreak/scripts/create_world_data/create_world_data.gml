// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_world_data(){

	global.world1_list = ds_list_create();
	


	
	//TODO: load level unlock data for world1 from file
	var lvl = ds_map_create();
	lvl [? worlddata.unlocked] = 1;
	lvl [? worlddata.rm] = "w1l1_rm";
	lvl [? worlddata.name] = "1";
	global.world1_list[| 0] = lvl;
	
	var lvl1 = ds_map_create();
	lvl1 [? worlddata.unlocked] = 1;
	lvl1 [? worlddata.rm] = "w1l2_rm";
	lvl1 [? worlddata.name] = "2";
	global.world1_list[| 1] = lvl1;
	
	var lvl2 = ds_map_create();
	lvl2 [? worlddata.unlocked] = 1;
	lvl2 [? worlddata.rm] = "w1l3_rm";
	lvl2 [? worlddata.name] = "3";
	global.world1_list[| 2] = lvl2;
	
	var lvl3 = ds_map_create();
	lvl3 [? worlddata.unlocked] = 1;
	lvl3 [? worlddata.rm] = "w1l4_rm";
	lvl3 [? worlddata.name] = "4";
	global.world1_list[| 3] = lvl3;
	
	var lvl4 = ds_map_create();
	lvl4 [? worlddata.unlocked] = 1;
	lvl4 [? worlddata.rm] = "w1l5_rm";
	lvl4 [? worlddata.name] = "5";
	global.world1_list[| 4] = lvl4;

}