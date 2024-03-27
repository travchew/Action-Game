controls_wasd();

move();

// Shooting Step


if (shoot_tracker > 0) shoot_tracker -= 1;

if (shoot_key_held) try_shoot();

if (dodge_key) try_dodge();

try_activate_ult();

determine_shoot_delay();
show_debug_message(string(ult));
shake();



// Sprite Stuff
sprite_flipper()
sprite_picker()


if (hp = 0) room_restart();


// Knockback Stuff!!!!

kb_step();

magx = clamp(magx, 0, maxmagx)
magy = clamp(magy, 0, maxmagy)