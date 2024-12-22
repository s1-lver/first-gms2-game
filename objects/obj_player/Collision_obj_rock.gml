if (player.iframes) return;

if (player.player_lives == 1) {
	player.player_lives--;
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy();
	obj_game.alarm[0] = 120;
} else {
	effect_create_above(ef_firework, x, y, 1, c_white);
	var new_angle = point_direction(x, y, other.x, other.y);
	with (other) {
		var _speed = speed;
		hspeed = dcos(new_angle) * _speed;
		vspeed = -dsin(new_angle) * _speed;
	}
	
	x = room_width / 2;
	y = room_height / 2;
	motion_set(0, 0);
	
	player.iframes = true;
	player.player_lives -= 1;
	alarm[1] = player.iframe_time;
}