/// @desc Bounce
if (other == last_collided_rock) return;

var _spd = speed;

var new_angle = point_direction(other.x, other.y, x, y);
hspeed = dcos(new_angle) * _spd;
vspeed = -dsin(new_angle) * _spd;

last_collided_rock = other;