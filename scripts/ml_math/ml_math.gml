#region wave
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