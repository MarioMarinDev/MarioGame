/// @desc: Switch P Control

event_inherited();

var just_hit = false;

if(scr_player_ground_pound_hit(id) && active){
	just_hit = true;
}else if(scr_player_jump_on(id) && active && !just_hit){
	just_hit = true;
	scr_player_force_jump(10);
}

if(just_hit){
	active = false;
	frame = 1;
	grab_able = false;
	scr_control_active_secrets(secret_type);
	scr_player_add_sound(snd_switch_p00, 4, false, true, true, true);
	scr_player_add_sound(snd_switch_p_music00, 5, false, true, false, false, true);
	alarm[3] = room_speed / 2;
}