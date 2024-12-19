 
image_index = selected;
draw_self();

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_pixelated_elegance);

var _text_scale = 1;
draw_text_transformed(x, y, _button_text, _text_scale, _text_scale, 0);

draw_set_valign(fa_top);
draw_set_halign(fa_left);