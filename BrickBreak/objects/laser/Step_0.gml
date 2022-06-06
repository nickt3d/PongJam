if(place_meeting(x, y+vspd*dt, Brick)){
	with(instance_place(x, y+vspd*dt, Brick)){
		damage_brick(self);
	}
	instance_destroy();
}

y-= vspd *dt;