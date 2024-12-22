speed -= 0.2;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

var explosion_sounds = [
	so_explode_0,
	so_explode_1,
	so_explode_2
]

play_sound(explosion_sounds[irandom_range(0, 2)]);

if (sprite_index == spr_rock_big) {
	sprite_index = spr_rock_small;
	var new_rock = instance_copy(true);
}
else if (instance_number(obj_rock) < obj_game.max_rocks) {
	sprite_index = spr_rock_big;
	x = -100;
	direction = point_direction(x, y, other.x, other.y);
	if (random(1) <= 0.25) obj_game.max_rocks++;
	if (random(1) <= 0.25) obj_game.rock_speed_increase += random_range(0.025, 0.1);
}
else {
	instance_destroy();
}


obj_game.points += 50;