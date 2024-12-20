// Highscore display

draw_set_font(fnt_pixelated_elegance);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);


draw_text_wave(room_width / 2 - 120, 860, 3.5, 100, "highscore!");
draw_text(room_width / 2, 915, global._data.highscore);

draw_set_halign(fa_left);
draw_set_valign(fa_top);