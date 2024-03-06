if (oPlayer.hp <= 1) && !(low) {
	low = true;
	audio_stop_all();
	audio_play_sound(snd_low, 10, true);
}