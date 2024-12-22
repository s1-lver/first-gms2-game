// VARIABLES
timer = 0;

player = {
	motion_speed : 0.1,
	max_speed : 20,
	turn_speed : 4,

	bullets : 10,
	max_bullets : 10,
	bullet_regen_time : 75,
	bullet_debounce : false,

	player_lives : 5,
	max_lives : 5,

	iframes : false,
	iframe_time : 240,
	
	powerup : Powerups.None,
	powerup_time : 600, // in frames
	current_powerup_time : 0
};

player.current_powerup_time = player.powerup_time;
