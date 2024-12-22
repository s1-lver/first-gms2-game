// Points
var points_text_scale = 1;
draw_set_font(fnt_pixelated_elegance);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(500, 10, data.highscore, points_text_scale, points_text_scale, 0);
draw_text_transformed(500, 50, points, points_text_scale, points_text_scale, 0);

// Bullets
var bullets = player.bullets;
if (bullets > 0) {
	for (var i = 0; i < bullets; i++) {
		var spacing = 10 + 15*i;
		var height = 50;
		var y0 = 130;
		var width = 6;
		draw_line_width(spacing, y0, spacing, y0 - height, width);
	}
}

// Lives
var _lives = player.player_lives;
var _max_lives = player.max_lives;
for (var i = 0; i < _max_lives; i++) {
	var spacing = 30 + 50*i;
	var _y = 40;
	var _scale = 0.75;
	var _alpha = 0;
	if (i < _lives) {
		_alpha = 1;
	} else if ( i >= _lives) {
		_alpha = 0.3;
	}
	draw_sprite_ext(spr_player, 1, spacing, _y, _scale, _scale, 90, c_white, _alpha);
}

// Powerup
var powerup = player.powerup;
if (powerup != Powerups.None) {
	var position = 
	{
		x : 12,
		y : 210
	};
	
	var _time = player.current_powerup_time;
	var _max_time = player.powerup_time;
	var _height = sprite_get_height(spr_powerups);
	var _width = sprite_get_width(spr_powerups);
	var top = _height - _height * (_time / _max_time)
	draw_sprite_part(spr_powerups, powerup, 0, top, _width, _height - top, position.x, position.y - (_height - top))
}