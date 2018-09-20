/// scr_ac_remove_all
/// @param:audio_controller

// Arguments
var ac = argument0;

if instance_exists(ac) with(ac){
	ds_list_empty(sounds);
}