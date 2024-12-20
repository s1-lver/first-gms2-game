// Points
var points_text_scale = 1;
draw_set_font(fnt_pixelated_elegance);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(500, 10, data.highscore, points_text_scale, points_text_scale, 0);
draw_text_transformed(500, 50, points, points_text_scale, points_text_scale, 0);

// Bullets
var bullets = draw_bullets;
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
var _lives = draw_lives;
var _max_lives = max_lives;
for (var i = 0; i < _max_lives; i++) {
	var spacing = 30 + 50*i;
	var _y = 40;
	var _scale = 0.75;
	var _alpha = 0;
	if (i < draw_lives) {
		_alpha = 1;
	} else if ( i >= draw_lives) {
		_alpha = 0.3;
	}
	draw_sprite_ext(spr_player, 1, spacing, _y, _scale, _scale, 90, c_white, _alpha);
}