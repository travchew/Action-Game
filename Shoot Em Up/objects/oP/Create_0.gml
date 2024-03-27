window_set_cursor(cr_none);
controls_wasd();

move_spd = 2;

function move() {
	//x += (right_key - left_key) * move_spd;
	//y += (down_key - up_key) * move_spd;
	hspeed = (right_key - left_key) * move_spd;
	vspeed = (down_key - up_key) * move_spd;
}



// Shake
shake_setup();

decx = .5;
decy = .5;

hp = 5;

walk_cycle = 0;
function walk_rotate() {
	walk_cycle += 1;
	if (walk_cycle < 15) {
		image_angle = 20;
	}
	else if (walk_cycle < 30) image_angle = -20;
	else walk_cycle = 0;
}

if (gamespeed_fps < 20) {
	show_debug_message("hi");
	game_set_speed(60, gamespeed_fps);
}


hit = false;
hit_timer = 0;

global.hitvspd = 3;
global.hithspd = 3;
