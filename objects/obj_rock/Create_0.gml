last_collided_rock = pointer_null;

turn_speed = random_range(-1.5, 1.5);

speed = random_range(0.5 + obj_game.rock_speed_increase, 1.5 + obj_game.rock_speed_increase);
direction = random(360);
image_angle = random(360);