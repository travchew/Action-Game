draw_set_font(fSonic);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(global.camx + 3, global.camy, "HEALTH: " + string(oP.hp));

var _hp = map_value(oP.hp, 0, 5, 70, 70+hpbarsize);


draw_rectangle_color(global.camx + 70, global.camy + 3, global.camx + _hp, global.camy + 15, c_green, c_lime, c_lime, c_green, false);


