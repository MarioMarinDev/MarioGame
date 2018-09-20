/// @desc: Main Control

scr_control_check_control();
scr_control_input();

scr_dev_control();

#region Win Control
if(global.game_win && !audio_is_playing(global.game_sound_win)){
	global.game_win = false;
	rm_goto(global.game_next_room);
}
if(global.game_defeat){
	global.game_defeat = false;
	rm_goto(global.game_next_room);
}
#endregion

#region Red Coins Game Control
if instance_number(obj_coin_red) <= 0 global.game_secrets_red_complete = true;
else global.game_secrets_red_complete = false;
#endregion