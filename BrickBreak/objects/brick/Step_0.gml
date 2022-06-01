if(hp <= 0){
	increase_score(10);
	var r = random_range(0, 1);
	if(r < 0.15){
		with(instance_create_layer(x, y, "Instances", PowerUp)){
			pu_type = irandom_range(0, powerups.length-1);
		}
	}
	if(r > 0.95){
		with(instance_create_layer(x, y, "Instances", PowerDown)){
			pu_type = irandom_range(0, powerdowns.length-1);
		}
	}
	instance_destroy();
}

//depth = -y;