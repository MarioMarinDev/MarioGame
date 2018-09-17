/// scr_player_jump_on
/// @param:hit_object

var obj = argument0;

if(instance_exists(obj_player) && instance_exists(obj)){
	if place_meeting(obj.x, obj.y - 2, obj_player) && !obj_player.on_ground && obj_player.bbox_bottom - 8 < bbox_top + 2
		return true;
}

return false;