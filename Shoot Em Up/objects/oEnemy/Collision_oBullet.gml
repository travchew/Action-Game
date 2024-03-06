magx = 10;
magy = 10;
spd_multi = 0;
stun_timer = 20;
audio_play_sound(snd_blow, 10, false)
hp -= 1;
move_towards_point(oPlayer.x,oPlayer.y,-20);
