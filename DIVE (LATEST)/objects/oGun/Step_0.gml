x = oP.x;
y = oP.y;
image_angle = point_direction(x, y, mouse_x, mouse_y);
//show_debug_message(string(image_angle));

// 90 - 270
if (image_angle > 90) && (image_angle < 270){
	sprite_index = sGun2L;
}
else sprite_index = sGun2;


