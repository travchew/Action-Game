
audio_stop_all();
audio_play_sound(snd_exit, 10, false, 1, 1.31)
show_message("THIS PIECE OF SOFTWARE IS IN DIRECT VIOLATION OF THE GENEVA CONVENTION DUE TO ITS INCLUSION OF THE RED CROSS IMAGERY. PLEASE DELETE IMMEDIATELY.");
url_open("https://www.icrc.org/en/copyright-and-terms-use#:~:text=The%20red%20cross%20and%20red,unauthorized%20persons%20is%20strictly%20forbidden.");
game_end();
