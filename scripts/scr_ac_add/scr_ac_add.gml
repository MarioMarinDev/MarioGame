/// scr_ac_add
/// @param:audio_controller,sound,priority,loops,destroy_on_play,overlaps_same,have_multiple?

// Arguments
var audio_controller = argument0;
var sound = argument1;
var priority = argument2;
var loops = argument3;
var destroy_on_play = argument4;
var overlaps_same = argument5;
var have_multiple = argument6;

if instance_exists(audio_controller) with(audio_controller){
	
	var map = ds_map_create();
	ds_map_add(map, "sound", sound);
	ds_map_add(map, "priority", priority);
	ds_map_add(map, "loops", loops);
	ds_map_add(map, "destroy_on_play", destroy_on_play);
	ds_map_add(map, "overlaps_same", overlaps_same);
	ds_map_add(map, "played", false);
	
	if(have_multiple == false){
		for(var i = 0; i < ds_list_size(sounds); i++){
			var dict = ds_list_find_value(sounds, i);
			var other_sound = ds_map_find_value(dict, "sound");
			if(sound == other_sound){
				return NULL;
			}
		}
	}
	
	ds_list_add(sounds, map);
	
}