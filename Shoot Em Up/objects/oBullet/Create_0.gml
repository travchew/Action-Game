aim_x = mouse_x;
aim_y = mouse_y;

off = 6;

xoffset = random_range(-off,off);
yoffset = random_range(-off,off);

x = oGun.x + xoffset;
y = oGun.y + yoffset;

move_spd = 15;
direction = point_direction(x,y,mouse_x+xoffset,mouse_y+yoffset);