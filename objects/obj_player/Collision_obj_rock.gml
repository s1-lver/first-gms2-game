if (iframes) { return; }

if (player_lives == 1) {
	player_lives--;
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy();
	obj_game.alarm[0] = 120;
} else {
	iframes = true;
	player_lives -= 1;
	alarm[1] = iframe_time;
}
obj_game.draw_lives = player_lives;