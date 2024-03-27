if keyboard_check_pressed(vk_up) oP.hp += 1;
if keyboard_check_pressed(vk_left) instance_create_layer(oP.x + 200, oP.y, "Instances", oEnemy);
if keyboard_check_pressed(ord("R")) room_restart();

if keyboard_check_pressed(ord("M")) mute = true;
if (mute) audio_stop_all();

if keyboard_check_pressed(ord("L")) global.limit += 15;