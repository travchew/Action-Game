// Prefire LASER
if (state = 0) {
	if (los) && (alive){
		draw_set_alpha(0.3);
		draw_line_width_color(x,y,targetx,targety, 1, c_white, c_white);
	}
}
else if (state = 1) {
	if (alive){
		show_debug_message("LCOKED!");
		if (show) draw_set_alpha(.8);
		else draw_set_alpha(.3);
		draw_line_width_color(x,y,targetx,targety, 1.5, c_white, c_white);
	}
}
else if (state = 2) {
	draw_set_alpha(1);
	draw_line_width_color(dx,dy,targetx,targety, 3, c_white, c_white);
	
	//draw_set_alpha(1);
	//draw_line_width_color(x,y,targetx,targety, 2, c_white, c_white);

	
}
// Locked LASER


draw_set_alpha(1);
event_inherited();

