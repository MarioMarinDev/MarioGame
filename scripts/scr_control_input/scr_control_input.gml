/// scr_control_input

var move_right, move_left, move_up, move_down;
var jump, run;

switch(control_type){
	case KEYBOARD:
		move_right = [ord("D"), vk_right];
		move_left = [ord("A"), vk_left];
		move_up = [ord("W"), vk_up];
		move_down = [ord("S"), vk_down];
		jump = [vk_space, ord("L")];
		run = [vk_shift, ord("K")];
	break;
	case CONTROLLER:
		jump = gp_face1;
		run = gp_face3;
	break;
}


switch(control_type){
	case KEYBOARD:
		global.move_right = keyboard_check_array(NORMAL, move_right);
		global.move_left = keyboard_check_array(NORMAL, move_left);
		global.move_up = keyboard_check_array(NORMAL, move_up);
		global.move_down = keyboard_check_array(NORMAL, move_down);

		global.jump = keyboard_check_array(NORMAL, jump);
		global.jump_pressed = keyboard_check_array(PRESSED, jump);
		global.jump_released = keyboard_check_array(RELEASED, jump);
		
		global.run = keyboard_check_array(NORMAL, run);
	break;
	
	case CONTROLLER:
		gamepad_set_axis_deadzone(control_id, 0.4);
		#region Movement
		if sign(gamepad_axis_value(control_id, gp_axislh)) > 0
			global.move_right = 1;
		else global.move_right = 0;
		if sign(gamepad_axis_value(control_id, gp_axislh)) < 0
			global.move_left = 1;
		else global.move_left = 0;
		if sign(gamepad_axis_value(control_id, gp_axislv)) > 0
			global.move_down = 1;
		else global.move_down = 0;
		if sign(gamepad_axis_value(control_id, gp_axislv)) < 0
			global.move_up = 1;
		else global.move_up = 0;
		#endregion
		
		global.jump = gamepad_button_check(control_id, jump);
		global.jump_pressed = gamepad_button_check_pressed(control_id, jump);
		global.jump_released = gamepad_button_check_released(control_id, jump);
		
		global.run = gamepad_button_check(control_id, run);
		
	break;
}