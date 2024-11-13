/// @description Movement

var _spd = 5;

if (keyboard_check(vk_left)) {
	obj_plr.x -= _spd;
}
if (keyboard_check(vk_right)) {
	obj_plr.x += _spd;
}

if (keyboard_check(vk_up)) {
	obj_plr.y -= _spd;	
}
if (keyboard_check(vk_down)) {
	obj_plr.y += _spd;
}

