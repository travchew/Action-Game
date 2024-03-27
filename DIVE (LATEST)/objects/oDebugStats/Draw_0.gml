draw_set_font(fSonic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(global.camx + 200, global.camy, "X: " + string(oP.x) + "   Y: " + string(oP.y));
//draw_text(global.camx + 280, global.camy, string(floor(fps_real)) + "fps");

draw_text(global.camx + 280, global.camy, string(floor(global.limit)) + "%");

