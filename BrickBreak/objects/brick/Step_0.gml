if(hp <= 0){
	GameController.points += 10;
	var r = random_range(0, 1);
	if(r < 0.15){
		with(instance_create_layer(x, y, "Instances", PowerUp)){
			pu_type = irandom_range(1, powerups.length);
		}
	}
	if(r > 0.8){
		with(instance_create_layer(x, y, "Instances", PowerDown)){
			pu_type = irandom_range(0, powerdowns.length);
		}
	}
	instance_destroy();
}

depth = -y;