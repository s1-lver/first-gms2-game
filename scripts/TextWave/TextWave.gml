#region Function Definiton
/// @function						wave(from, to, duration, offset, time);
/// @param {real} from				Value to start wave from
/// @param {real} to				Value to end wave at
/// @param {real} duration			Duration of the wave
/// @param {real} offset			Offset of the wave
/// @param {real} time				Time to use (used for offsetting)
#endregion

function wave(from, to, duration, offset, time = 0){
	 if (time == 0) time = current_time;
	 var a4 = (to - from) * 0.5;
	 
	 return from + a4 + sin((((time * 0.001) + duration * offset) / duration) * (pi * 2)) * a4;
}

#region Function Definition
/// @function						draw_text_wave(x, y, wave_height, wave_length, text)
/// @param {real} x					The x-coordinate
/// @param {real} y					The y-coordinate
/// @param {real} wave_height		The peak of the wave's cycle
/// @param {real} wave_length		How long one wave cycle is
/// @param {string} text			The text to draw
#endregion

function draw_text_wave(xx, yy, _waveH, _waveL, text) {
	var _offset = 0;
	var _stringProcessed = "";
	
	for (var i = 1; i <= string_length(text); ++i){
		_offset += _waveL;
		var letter = string_char_at(text, i);
		var _sizeProcessed = string_width(_stringProcessed);
		var _height = wave(-_waveH, _waveH, 1, 0, current_time + _offset);
		draw_text(xx+_sizeProcessed, yy-_height, letter);
		_stringProcessed += letter;
	}
}