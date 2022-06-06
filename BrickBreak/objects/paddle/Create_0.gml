/// @description Insert description here
// You can write your code in this editor
min_paddle_size = 3;
paddle_size = 5;
max_paddle_size = 8;
image_speed = 0;
x = room_width/2;
target_x = x;
spd = 0;

accel = 50;

laser_paddle_stage = 0;
laser_cd = 0;
laser_paddle_cd = 15;

glue_paddle = false;
glue_paddle_cd = 15;

spd_stages = [300, 350, 400, 450, 500];
spd_stage = 2;
spdup_cd = 0;
max_spd = spd_stages[spd_stage];