/// scr_player_add_sound
/// @param:sound,priority,loops,destroy_on_play,overlaps_same,have_multiple?

// Arguments
var sound = argument0;
var priority = argument1;
var loops = argument2;
var destroy_on_play = argument3;
var overlaps_same = argument4;
var have_multiple = argument5;

if instance_exists(obj_player)
	with obj_player scr_ac_add(obj_player.ac, sound, priority, loops, destroy_on_play, overlaps_same, have_multiple);