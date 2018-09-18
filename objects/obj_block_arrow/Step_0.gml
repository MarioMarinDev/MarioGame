/// @desc: Arrow Block Control

event_inherited();

var enable = true;

if(instance_exists(obj_player)){
	if x_block > 0 && block[RIGHT] - (threshold * x_block) > obj_player.bbox_left enable = false;
	else if x_block < 0 && block[LEFT]  - (threshold * x_block) < obj_player.bbox_right enable = false;
	else if y_block > 0 && block[BOTTOM] - (threshold * y_block) > obj_player.bbox_top enable = false;
	else if y_block < 0 && block[TOP] - (threshold * y_block) < obj_player.bbox_bottom enable = false;
	
	if enable mask_index = sprite_mask;
	else mask_index = noone;
	if enable active = true;
	else active = false;
	
}