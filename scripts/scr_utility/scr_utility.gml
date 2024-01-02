/// @desc instance_create_depth with less params needed
/// @param {real} x 
/// @param {real} y 
/// @param {real} obj 
/// @returns {real} object
function instance_create(_x, _y, object)
{
	instance_create_depth(_x,_y,0,object);
}

/// @description Returns a value that will wave back and forth between [from-to] over [duration] seconds
/// @param from     
/// @param to
/// @param duration
/// @param offset
/// @param [time]
function wave(from, to, duration, offset, time = current_time) {
    var a4 = (to - from) / 2;
    return from + a4 + sin((((time * 0.001) + duration * offset) / duration) * 2 * pi) * a4;    
}

/// @desc plays a sound ez
/// @param {real} soundid
function sound_play(soundid)
{
	if (!(audio_is_playing(soundid)))
	{
		audio_play_sound(soundid,0,false);
	}
}