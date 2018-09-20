/// scr_control_active_secrets
/// @param:[secret_type]

var secret_type = BLUE;

if argument_count > 0
	secret_type = argument[0];

if(instance_exists(obj_control)){
	switch(secret_type){
		default:
			global.game_secrets = true;
		break;
		case RED:
			global.game_secrets_red = true;
		break;
	}
	obj_control.alarm[1] = global.game_secrets_delay;
}