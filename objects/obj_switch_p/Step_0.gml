/// @desc: Switch P Control

if(scr_player_jump_on(id)){
	active = false;
	frame = 1;
	scr_player_force_jump(10);
	scr_control_active_secrets();
}