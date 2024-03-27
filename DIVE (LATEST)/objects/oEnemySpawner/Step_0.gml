timer += 1;

if timer > spawn_rate {
	var spawnx = x + random_range(-50, 50);
	var spawny = y + random_range(-50, 50);
	instance_create_layer(spawnx,spawny,"Instances",oEnemy);
	timer = 0;
}