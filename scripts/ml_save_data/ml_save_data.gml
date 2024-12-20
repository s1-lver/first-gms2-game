#region load_save_data
/// @function					load_save_data();	
/// @param {string} file		File to load data from
#endregion
function load_save_data(file) {
	if (file_exists(file)) {
		var _buffer = buffer_load(file);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		data = _loadData;
		
		show_debug_message("Game Loaded! " + _string);
	}
}

#region save_data
/// @func save_data(file)		Saves data to specified file				
/// @param {string} file		File to save data to
#endregion
function save_data(file) {
	var _saveData = data;
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, file);
	buffer_delete(_buffer);
	
	show_debug_message("Game saved! " + _string);
}