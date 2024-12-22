audio_group_load(music);
audio_group_load(sounds);

#region set_song_playing
/// @func						set_song_playing(song_id, loop);
/// @param	{Asset.GMSound}		song_id
/// @param	{bool}				loop
#endregion
function set_song_playing(song_id, loop = false) {
	with (obj_music_manager) {
		targetSongAsset = song_id;
		loopCurrentSong = loop;
	}
}

#region set_song_queue
/// @func							set_song_playing(song_queue, override_current_song);
/// @param	{Array<Asset.GMSound>}	song_queue
/// @param	{bool}					override_current_song
#endregion
function set_song_queue(song_queue, override_current_song = false) {
	with (obj_music_manager) {
		loopCurrentSong = false;
		queue = ds_queue_create();
		for (var i = array_length(song_queue) - 1; i >= 0; i--) {
			ds_queue_enqueue(queue, song_queue[i]);	
		}
		if (override_current_song) end_current_song();
	}
}

#region add_song_queue
/// @func							add_song_queue(song_queue);
/// @param	{Array<Asset.GMSound>}	song_queue
#endregion
function add_song_queue(song_queue) {
	with (obj_music_manager) {
		for (var i = array_length(song_queue) - 1; i >= 0; i--) {
			ds_queue_enqueue(queue, song_queue[i])	
		}
	}
}

#region set_song_looping
/// @func				set_song_looping(loop);
/// @param	{Bool}		loop
#endregion
function set_song_looping(loop) {
	with (obj_music_manager) {
		loopCurrentSong = loop;
	}
}

#region end_current_song
/// @func				end_current_song();
#endregion
function end_current_song() {
	with (obj_music_manager) {
		targetSongAsset = noone;	
	}
}

#region stop_music
/// @func				stop_music();
#endregion
function stop_music() {
	with (obj_music_manager) {
		ds_queue_clear(queue);
		targetSongAsset = noone;
		loopCurrentSong = false;
	}
}

#region play_sound
/// @func						play_sound
/// @param	{Asset.GMSound}		sound_id
/// @param	{Real}				priority
#endregion
function play_sound(sound_id, priority = 4) {
	audio_play_sound(sound_id, priority, false);	
}