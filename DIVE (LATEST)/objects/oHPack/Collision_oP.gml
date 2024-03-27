oP.hp += healthplus;
global.limit += limitplus;

audio_play_sound(snd_hp, 10, false, .3, .27, 5);
instance_destroy();