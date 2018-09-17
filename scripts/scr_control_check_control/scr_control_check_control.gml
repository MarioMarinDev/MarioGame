/// scr_control_check_control

if(keyboard_check_pressed(vk_anykey)){
	control_type = KEYBOARD;
}

var gp_num = gamepad_get_device_count();
for(var i = 0; i < gp_num; i++){
	if gamepad_is_connected(i)
		if(gamepad_button_check(i, gp_start)){
			control_id = i;
			control_type = CONTROLLER;
		}
}