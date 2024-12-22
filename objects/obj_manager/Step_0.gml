var _f11 = keyboard_check_pressed(vk_f11);

if (_f11) {
	window_set_fullscreen(!window_get_fullscreen());
}

if (window_get_fullscreen()) {
	layer_background_sprite(layer_background_get_id(layer_get_id("Background")), bg_border);
} else { 
	layer_background_sprite(layer_background_get_id(layer_get_id("Background")), bg_no_border);
}