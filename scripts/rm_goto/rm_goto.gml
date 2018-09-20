/// rm_goto
/// @param:room

var rm = argument0;

if(!instance_exists(obj_transition)){
	var trans = instance_create_depth(0, 0, obj_control.depth - 100, obj_transition);
	trans.next_room = rm;
}