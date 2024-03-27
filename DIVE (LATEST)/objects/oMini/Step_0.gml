//// MINI SPECIFIC STUFF
shoot_timer = 0;
fast_spd = 2.2;


// Bullet Modification (Unused)
if instance_exists(my_bullet) {
	//my_bullet.image_xscale = .5;
	//my_bullet.image_yscale = .5;
	//my_bullet.speed = 2.5;	
}
// While Active:
if ((active) && (hp > 0)) {	
	state = 2;
}
// Setup
if (framesalive = 0) {
	hp -= 1;
	image_xscale *= .4;
	image_yscale *= .4;
	activerange = 120;
	deactiverange = 1000000;
}
if (sprite_index = sEnemy) sprite_index = sMini; // TO SWITCH COSTUME AFTER DMG

// STATIC SHAKE
if (alive) {
	if (magx < 2) magx = 2;
	if (magy < 2) magy = 2;
}

// ACTIVATION
if (range < activerange) && (alive) && (!active) && (los) {
	active = true;
	state = irandom_range(0,2);
	if !(sound) {
		show_debug_message("Tick played by Mini ID: " + string(id));
		mySound = audio_play_sound(snd_tick, 10, true);
		show_debug_message("Sound ID Playing is:  " + string(mySound));
		sound = true;
	}
}

if (!alive) if audio_exists(mySound) audio_stop_sound(mySound);



event_inherited();

// //END OF MINI SPECIFIC STUFF

//framesalive += 1;

//// FOR TESTING (!!!)
////state = 2; // DISABLE LATER

//if (hp < 1) {
//	alive = false;
//}

//range = distance_to_object(oP);

//if (range < activerange) && (!active) {
//	active = true;
//	state = irandom_range(0,2);
//}
//else if (range > deactiverange) {
//	active = false;
//	state = 0;
//}

////if (hp > 0) move_towards_point(oP.x,oP.y, move_spd * spd_multi);

//// After action_frames # of frames, choose a state

//if (active) {
//	run_state_step();
	
//	//Shooting
//	shoot();
//}
//else {
//	state = 0;
//	//show_debug_message(string(id) + "is inactive");
//}


//// Determine Speed
//if (range > 400) {
//	move_spd = fast_spd;
//}
//else {
//	move_spd = slow_spd;
//}


////Death

//if (hp <= 0) {
//	sprite_index = sEnemyDead;
//	state = 4;
//	image_alpha += -0.001;
//}



////KNOCKBACK
//kb_step();

////Shake
//shake();
