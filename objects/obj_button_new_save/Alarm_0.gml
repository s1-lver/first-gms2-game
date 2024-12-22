// Inherit the parent event
event_inherited();

if (confirm) { 
	if (file_exists(save_file)) {
		file_delete(working_directory + save_file);
		show_debug_message("deleted from " + working_directory + save_file);
	}
	data = global._clean_data;
	game_restart();
} else confirm = true;
