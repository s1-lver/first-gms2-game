/// VARIABLES
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _space = keyboard_check_pressed(vk_space);

// Movement logic	
move_wrap(true, true, 0);

image_angle += (turn_speed * -_right) + (turn_speed * _left);
motion_add(image_angle, motion_speed * _up + motion_speed * -_down);
speed = clamp(speed, 0, max_speed); // speed limiter

// Bullet regen logic
if (alarm_get(0) == -1 && bullets < max_bullets) {
	alarm[0] = bullet_regen_time;	
}

// Shooting logic
if (_space && bullets > 0) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	bullets -= 1;
}

if (iframes && sprite_index != spr_player_iframes) {
	sprite_index = spr_player_iframes;
}
else if (!iframes && sprite_index != spr_player) {
	sprite_index = spr_player;
}

// Update game object
obj_game.draw_bullets = bullets;
obj_game.max_lives = max_lives;
obj_game.draw_lives = player_lives;


