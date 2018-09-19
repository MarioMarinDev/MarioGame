/// scr_player_add_sound
/// @param:sound,priority,loops,destroy_on_play,overlaps_same,have_multiple?,[delete_same]

// Arguments
var sound = argument[0];
var priority = argument[1];
var loops = argument[2];
var destroy_on_play = argument[3];
var overlaps_same = argument[4];
var have_multiple = argument[5];
var delete_same = false;

// Extra arguments
if argument_count > 6 delete_same = argument[6];

if instance_exists(obj_player)
	with obj_player scr_ac_add(obj_player.ac, sound, priority, loops, destroy_on_play, overlaps_same, have_multiple, delete_same);