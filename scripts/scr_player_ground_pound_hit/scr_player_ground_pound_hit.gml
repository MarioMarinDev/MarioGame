/// scr_player_ground_pound_hit
/// @param:hit_object

var obj = argument0;

if(instance_exists(obj_player) && instance_exists(obj)){
	if place_meeting(obj.x, obj.y - 2, obj_player) && obj_player.ground_pound
		return true;
}

return false;