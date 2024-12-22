if (confirm) {
	draw_set_font(fnt_pixelated_elegance);
	draw_set_valign(fa_middle);
	
	var text_scale = 0.75;

	draw_text_transformed(x + sprite_width / 2 + 10, y, "are you sure?", text_scale, text_scale, 0);
}
if (selected == false) confirm = false;