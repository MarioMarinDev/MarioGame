/// scr_control_active_secrets

if(instance_exists(obj_control)){
	global.game_secrets = true;
	obj_control.alarm[1] = global.game_secrets_delay;
}