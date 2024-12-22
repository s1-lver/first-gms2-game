/// VARIABLES
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _space = keyboard_check_pressed(vk_space) || (player.powerup == Powerups.Rapid_Shot && keyboard_check(vk_space));

// Movement logic	
move_wrap(true, true, 32);

image_angle += (player.turn_speed * -_right) + (player.turn_speed * _left);
motion_add(image_angle, player.motion_speed * _up + player.motion_speed * -_down);
speed = clamp(speed, 0, player.max_speed); // speed limiter

// Bullet regen logic
if (alarm_get(0) == -1 && player.bullets < player.max_bullets) {
	alarm[0] = player.bullet_regen_time;	
}

// Shooting Logic
if (_space && player.bullets > 0 && !player.bullet_debounce) {
	switch (player.powerup)
	{
		case Powerups.Tri_Shot:
			var spread = 60; // in degrees
			var _dir = image_angle;
			for (var i = -1; i <= 1; i++) {
				var new_bullet = instance_create_layer(x, y, layer,	obj_bullet);
				new_bullet.direction = _dir + (spread / 3) * i;
			}
			player.bullets--;
		break;
		
		case Powerups.Rapid_Shot:
			instance_create_layer(x, y, layer, obj_bullet);
		break;
		
		default:
			instance_create_layer(x, y, layer, obj_bullet);
			player.bullets--;
		break;
	}
	player.bullet_debounce = true;
	alarm[3] = 5;
}

if (player.iframes && sprite_index != spr_player_iframes) {
	sprite_index = spr_player_iframes;
}
else if (!player.iframes && sprite_index != spr_player) {
	sprite_index = spr_player;
}

// Powerup logic
if (alarm_get(2) == -1 && player.powerup != Powerups.None) {
	alarm[2] = 1;	
}



// Update game object
obj_game.player = player;


