/// scr_player_jump_hit
/// @param:hit_object

var obj = argument0;

if(instance_exists(obj_player) && instance_exists(obj)){
	if place_meeting(obj.x, obj.y + 1, obj_player) && obj_player.jumping// !obj_player.on_ground
		return true;
}

return false;