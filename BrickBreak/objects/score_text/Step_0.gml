/// @description Insert description here
// You can write your code in this editor
y -= vspd*dt;
timer -= dt;
if(timer < 0){
	instance_destroy();	 
}