if (collected) return;

other.player.powerup = powerup;
other.player.current_powerup_time = other.player.powerup_time;

effect_create_above(ef_spark, x, y, 4, c_white);
collected = true;