// Sprite

s_idle = sPomfIdle;
s_run = sPomfRun;
s_hit = sPomfHurt;
sprite_index = sPomfIdle;

direction = RIGHT;
og_xsc = image_xscale;
og_ysc = image_yscale;

normal_accuracy = 0;
ult_accuracy = 20;
accuracy = normal_accuracy;


function sprite_flipper() {
	if right_key direction = RIGHT;
	if left_key direction = LEFT;
	
	if (direction = RIGHT) {
		image_xscale = og_xsc; 
	}
	else if (direction = LEFT) {
		image_xscale = -og_xsc;
	}
}

function sprite_picker() {
	if (alarm[1] > 0) sprite_index = s_hit;
	
	else if (left_key or right_key or up_key or down_key) {
		sprite_index = s_run;
	}
	else sprite_index = s_idle;
}

global.limit = 0;

window_set_cursor(cr_none);
controls_wasd();



move_spd = 2;

function move() {
	move_x((right_key - left_key) * move_spd);
	move_y((down_key - up_key) * move_spd);
	
	
}
// Shooting
normal_shoot_delay = 15;
max_shoot_delay = 3;
shoot_delay = normal_shoot_delay;
shoot_tracker = 0;

ult_activated = false;
ult = false;

function try_activate_ult() {
	// Play Sound and activate Ult
	if (global.limit = 100) && (ult_key) && (!ult_activated){
		ult_activated = true;
		audio_play_sound(snd_ultuse, 10, false, 1, 0.53, 1.1);
		freeze(8);
		magx = 15;
		magy = 15;
	}
	// Static Shake While Active
	if ult_activated {
		magx = 3;
		magy = 3;
		if (global.limit < 100) {
			ult_activated = false;
			audio_play_sound(snd_nocharge, 10, false, 1, 0.03);	
		}
			
	}
	// Use Ult
	if (mouse_check_button_pressed(mb_left)) && (ult_activated) {
		ult = true;
	}
	try_ult();
	
}

function try_ult() {
	if (ult) {
		oCam.magx = 4;
		oCam.magy = 4;
		if (global.limit > 0) {
			global.limit -= 0.3;
		}
		if (mouse_check_button_released(mb_left)) or (global.limit = 0) or (hit) {
			ult = false;
			ult_activated = false;
			show_debug_message("ult is over.");
		}
	}
}

function determine_shoot_delay() {
	if (ult) {
		shoot_delay = max_shoot_delay;
		accuracy = ult_accuracy;
	}
	else {
		shoot_delay = normal_shoot_delay;
		accuracy = normal_accuracy;
	}
}


function try_shoot() {
	if (shoot_tracker = 0) {
		instance_create_layer(x,y,"Instances",oBullet);
		magx += 2;
		magy += 2;
		oCam.magx += 1;
		oCam.magy += 1;
		//audio_play_sound(snd_shoot, 10, false, 1, .3);
		if (global.limit = 100) audio_play_sound(snd_shoot1, 10, false, .1, 0, 1.2);
		else audio_play_sound(snd_shoot1, 10, false, .1);
		shoot_tracker = shoot_delay;
	}
}

dodge = false;

function try_dodge() {
	if (!dodge) && (global.limit >= 5) {
		global.limit -= 5;
		take_kb(x + ((right_key - left_key) * -15),
		y + ((down_key - up_key) * -15),
		.5);
		image_alpha = 0;
		oGun.image_alpha = 0;
		alarm[3] = 2;
		
		hit = true;
		image_blend = c_orange;
		alarm[1] = 12;
		alarm[2] = 20; // I FRAMES
		
		audio_play_sound(snd_dash, 10, false, 1, 0.17);
		//show_debug_message("dodged!");
	}
	else audio_play_sound(snd_nocharge, 10, false, 1, 0.03);
}	

kb_setup();

function take_kb(_x, _y, _multi) {
	kb_force_x = x - _x;
	kb_force_y = y - _y;

	// then apply our multiplier
	kb_force_x *= _multi;
	kb_force_y *= _multi;
	//LOL SOMETHING ABOUT NUMBERS HAHAHAHAHAHAA
	kb_force_x *= 1;
	kb_force_y *= 1; 
	//show_debug_message("taken xkb: " + string(kb_force_x));
	//show_debug_message("taken ykb: " + string(kb_force_y));
}

function move_x(_amnt) {  // Move Object by X amnt until colliding with wall
	var _add = sign(_amnt);
	var _a = floor(abs(_amnt));
	for (var i = 0; i < _a; ++i) {
	    if place_meeting(x+_add, y, oWall) {}
		else x+= _add;
	}
}

function move_y(_amnt) {  // Move Object by X amnt until colliding with wall
	var _add = sign(_amnt);
	var _a = floor(abs(_amnt));
	for (var i = 0; i < _a; ++i) {
	    if place_meeting(x, y+_add, oWall) {}
		else y+= _add;
	}
}

hit = false;

function check_dmg() {
	if !(hit) {
		hit = true;
		alarm[2] = 40; // I FRAMES
	
		magx += 10;
		magy += 10;
		//sprite_index = sEnemyFlash;
		alarm[1] = 12;
		hp -= 1;
		global.limit += 9;
		audio_play_sound(snd_hurt, 10, false, 10, 0.16);
		audio_play_sound(snd_hurt_hi, 10, false, .1, 0.61, 1.1);
		oCam.magx = 15;
		oCam.magy = 15;
		dmgflash(1);
		global.freezeframes = 10;
		//freeze(10); // THIS DOESNT FUCKING WORK LMAO
		freeze(6);
		//game_set_speed(2, gamespeed_fps);
		//alarm[0] = 1;
	}
}


// Shake
shake_setup();

maxmagx = 8;
maxmagy = 8;

decx = .5;
decy = .5;

maxhp = 5;  
hp = maxhp;








