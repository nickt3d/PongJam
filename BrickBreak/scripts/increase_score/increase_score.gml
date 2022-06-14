// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function increase_score(s){
	if(instance_exists(LevelController)){
		LevelController.levelpoints += s;
		LevelController.xp += s;
	}
}