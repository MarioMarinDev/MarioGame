/// @desc: Audio Control

for(var i = 0; i < ds_list_size(sounds); i++){
	
	var dict = ds_list_find_value(sounds, i);
	
	var sound = ds_map_find_value(dict, "sound");
	var priority = ds_map_find_value(dict, "priority");
	var loops = ds_map_find_value(dict, "loops");
	var destroy_on_play = ds_map_find_value(dict, "destroy_on_play");
	var overlaps_same = ds_map_find_value(dict, "overlaps_same");
	var played = ds_map_find_value(dict, "played");
	
	if( (!played && !loops) || loops ){
		audio_play(sound, priority, false, overlaps_same);
	}
	
	ds_map_replace(dict, "played", true);
	if destroy_on_play ds_list_delete(sounds, i);
	
}