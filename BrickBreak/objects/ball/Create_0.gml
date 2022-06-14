spd = 0;

accel = 25; // the amount we increase on each bounce
dir = 0;
hspd = 0;
vspd = 0;

//glued offset
g_offset = 0;

state = states.idle;
debug_dir = dir;
rot = 0;
rot_spd = 0;

//thru ball vars
thruball = false;
thruball_cd = 15;

//aoe ball vars
aoe = 0;
aoe_max = 3;
aoe_cd = 15;

//ball spd vars
spd_stages = [300, 350, 400, 450, 500];
spd_stage = 1;
spdup_cd = 0;
max_spd = 350;

ball_release_cooldown = 3;