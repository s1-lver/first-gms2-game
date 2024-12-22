// Powerup Spawning
var cur_time = current_time;

if (cur_time - last_time >= powerup_spawn_time) {
	if (random(1) <= powerup_spawn_chance) {
		var obj = instance_create_layer(random_range(30, 970), -64, layer, obj_powerup)
		
		obj.powerup = irandom_range(1, Powerups.total - 1);
		powerup_spawn_chance = 0.2;
	} else powerup_spawn_chance *= 1.25;
	last_time = current_time;
}

// Rock Speed and Count
rock_speed_increase = clamp(rock_speed_increase, 0.5, rock_speed_clamp);
max_rocks = clamp(max_rocks, 12, rock_count_clamp);