if (oP.ult) {
	layer_set_visible("greenbg", false);
	layer_set_visible("ultbg", true);
	layer_set_visible("hurtbg", false);
}
else if (oP.alarm[2] > 5) && (!oP.dodge) {
	layer_set_visible("hurtbg", true);
}

else {
	layer_set_visible("greenbg", true);
	layer_set_visible("ultbg", false);
	layer_set_visible("hurtbg", false);
}