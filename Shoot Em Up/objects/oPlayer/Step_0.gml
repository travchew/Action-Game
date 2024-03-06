controls_wasd();

if !(hit) move();


if (shoot_key) {
	instance_create_layer(x,y,"Instances",oBullet);
	magx += 4;
	magy += 4;
	oCam.magx += 3;
	oCam.magy += 3;
	audio_play_sound(snd_shoot, 10, false, 1, .3);
}

shake();

if place_meeting(x+hspeed, y, oWall) hspeed = 0; // will it collide next frame?
if place_meeting(x, y+vspeed, oWall) vspeed = 0;

if (hit_timer > 0) {
	hit = true;
	hspeed = global.hithspd;
	vspeed = global.hitvspd;
	hit_timer -= 1;
}
else {
	hit_timer = 0;
	hit = false;
}

if (hit = true) {
	image_angle += 10;
}
else if (up_key or left_key or right_key or down_key) {
	walk_rotate();
}
else image_angle = 0;


if (hp = 0) {
	room_goto_next();
}