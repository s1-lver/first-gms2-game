turn_speed = random_range(0.5, 1.5);
if (irandom(1) == 1)  turn_speed *= -1;
motion_speed = random_range(1, 2);

powerup = Powerups.None;
collected = false;