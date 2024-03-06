timer += 1;

if timer > spawn_rate {
	instance_create_layer(x,y,"Instances",oEnemy);
	timer = 0;
}