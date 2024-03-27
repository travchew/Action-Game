range = distance_to_object(oP);

if (hp > 0) move_towards_point(oP.x,oP.y,move_spd * spd_multi);
if (range > 400) {
	move_spd = fast_spd;
}
else {
	move_spd = slow_spd;
}

if place_meeting(x+hspeed, y, oWall) hspeed = 0; // will it collide next frame?
if place_meeting(x, y+vspeed, oWall) vspeed = 0;

shake();

if (stun_timer > 0) {
	stun_timer -= 1;
}
else spd_multi = 1;

if (hp <= 0) {
	sprite_index = sEnemyDead;
}


if (shoot_timer > shoot_delay) && (hp > 0) {
	instance_create_layer(x,y,"Instances",oEBullet);
	shoot_timer = 0;
}
else {
	shoot_timer += 1;
}