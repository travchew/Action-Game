if audio_exists(mySound) audio_stop_sound(mySound);
if (alive) {
	if (!oP.alarm[2] = 0) oP.take_kb(x,y,0.7);
	instance_create_layer(x,y,"Above", oBulletFlash);
	audio_play_sound(snd_miniplode, 10, false, 1, 1.18);
	instance_destroy();
}
