event_inherited();

fast_spd = 0;
move_spd = 0;



targetx = oP.x
targety = oP.y

state = 0;

// 0: TRACK
// 1: LOCK
// 2: SHOOT

track_time = irandom_range(60, 100);
alarm[11] = track_time;

lock_time = 200;

show = true;
deactiverange = 300;
