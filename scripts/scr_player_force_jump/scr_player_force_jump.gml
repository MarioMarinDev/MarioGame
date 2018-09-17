/// scr_player_force_jump
/// @param:elevation

// Arguments
var elevation = argument0;

if(instance_exists(obj_player)){
	obj_player.jumping = true;
	obj_player.jump_air = 0;
	obj_player.jumping_forced = true;
	obj_player.jumping_forced_elevation = elevation;
}