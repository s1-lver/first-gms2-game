/// @desc Powerup timer
player.current_powerup_time--;
if (player.current_powerup_time == 0) {
	player.powerup = Powerups.None;
	player.current_powerup_time = player.powerup_time;
}