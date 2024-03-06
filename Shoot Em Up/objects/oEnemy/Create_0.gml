// Move Speed
move_spd = 0;
fast_spd = 4;
slow_spd = 1;
spd_multi = 1;

range = distance_to_object(oPlayer);

// Shake
shake_setup();

decx = .5;
decy = .5;

hp = 2;

stun_timer = 0;



shoot_delay = 3*SEC;
shoot_timer = random_range(0,30);