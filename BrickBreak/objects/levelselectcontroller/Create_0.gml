/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 5; i++){
	var ii = i mod 3;
	show_debug_message(ii);
		with(instance_create_layer(16+(i mod 3)*128, 64+(i div 3)*80, layer, LevelBtn)){
			rm_index = global.world1_list[| i][? worlddata.rm];
			level_name = global.world1_list[| i][? worlddata.name]
			rm_unlocked = global.world1_list[| i][? worlddata.unlocked];
	}
}