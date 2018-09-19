/// scr_control_check_control

if(keyboard_check_pressed(vk_anykey) && control_type != KEYBOARD){
	control_type = KEYBOARD;
}

var gp_num = gamepad_get_device_count();
var pressed_any = false;
for(var i = 0; i < gp_num; i++){
	if(gamepad_is_connected(i)){
		for(var j = gp_face1; j <= gp_axisrv; j++){
			if(gamepad_button_check(i, j) || gamepad_axis_value(i, j) != 0){
				pressed_any = true;
			}
		}
		if(pressed_any){
			control_id = i;
			control_type = CONTROLLER;
		}
	}
}