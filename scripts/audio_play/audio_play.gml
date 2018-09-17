/// audio_play
/// @param:sound,priority,loops,overlaps_same?

// Arguments
var sound = argument[0];
var priority = argument[1];
var loops = argument[2];

// Local variables
var overlap_able = true;

// Extra arguments
if(argument_count > 3){
	overlap_able = argument[3];
}

if(audio_exists(sound)){
	if((!overlap_able && !audio_is_playing(sound)) || overlap_able){
		audio_play_sound(sound, priority, loops);
	}
}