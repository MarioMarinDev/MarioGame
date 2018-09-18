/// rm_goto
/// @param:room

var rm = argument0;

if(!instance_exists(obj_transition)){
	var trans = instance_create_depth(0, 0, -1, obj_transition);
	trans.next_room = rm;
}