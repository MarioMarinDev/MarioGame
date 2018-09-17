/// scr_ac_remove
/// @param:audio_controller,sound

// Arguments
var ac = argument0;
var sound = argument1;

if instance_exists(ac) with(ac){
	
	for(var i = 0; i < ds_list_size(sounds); i++){
		var dict = ds_list_find_value(sounds, i);
		var other_sound = ds_map_find_value(dict, "sound");
		if(sound == other_sound){
			ds_list_delete(sounds, i);
		}
	}
	
}