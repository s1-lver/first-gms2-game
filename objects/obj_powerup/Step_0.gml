image_angle += turn_speed;
image_index = powerup;

if (collected) {
	image_alpha = lerp(image_alpha, 0, 0.1);
	
	if (image_alpha == 0) instance_destroy();
	return;
}

y += motion_speed;