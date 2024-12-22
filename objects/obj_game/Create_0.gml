// VARIABLES
points = 0;

player = obj_player.player;

last_time = current_time;
powerup_spawn_time = 20000; // in milliseconds
powerup_spawn_chance = 0.2; // 0.0 - 1.0

max_rocks = 12;
rock_speed_increase = 0;
rock_count_clamp = 20;
rock_speed_clamp = 2.5;