// GET INPUTS

right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));

// PLAYER MOVEMENT

	// Get Direction
	var _hKey = right_key - left_key;
	var _vKey = down_key - up_key;
	move_dir = point_direction(0, 0, _hKey, _vKey);
	
	// Get x And y Speeds
	var _spd = 0;
	var _inputLevel = clamp(point_distance(0, 0, _hKey, _vKey), 0, 1);
	_spd = move_spd * _inputLevel;
	
	x_spd = lengthdir_x(_spd, move_dir);
	y_spd = lengthdir_y(_spd, move_dir);
	
	if (place_meeting(x + x_spd, y, obj_wall)) 
	{
		x_spd = 0;
	}
	if (place_meeting(x, y + y_spd, obj_wall))
	{
		y_spd = 0;
	}
	
	// Move player
	x += x_spd;
	y += y_spd;