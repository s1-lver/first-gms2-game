if (!ds_queue_empty(queue) && !audio_is_playing(songInstance)) {
	targetSongAsset = ds_queue_dequeue(queue)
	ds_queue_enqueue(queue, targetSongAsset);
}

if (songAsset != targetSongAsset) {	
	if (audio_exists(targetSongAsset)) {
		if (audio_is_playing(songInstance)) audio_stop_sound(songInstance);
		songInstance = audio_play_sound(targetSongAsset, 4, loopCurrentSong);
	} else if (targetSongAsset == noone) if (audio_is_playing(songInstance)) audio_stop_sound(songInstance);
	
	songAsset = targetSongAsset;
}