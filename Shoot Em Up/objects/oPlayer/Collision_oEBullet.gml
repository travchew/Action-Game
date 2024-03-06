if !(hit) {
	magx += 10;
	magy += 10;
	hp -= 1;
	game_set_speed(60, gamespeed_fps);
	hit_timer = 30;
	audio_play_sound(snd_slip, 10, false);
}