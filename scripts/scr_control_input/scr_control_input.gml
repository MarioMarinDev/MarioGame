/// scr_control_input

var move_right, move_left, move_up, move_down;
var jump, jump_pressed, jump_released;
var run;

switch(control_type){
	case KEYBOARD:
		move_right = ord("D");
		move_left = ord("A");
		move_up = ord("W");
		move_down = ord("S");
		jump = vk_space;
		run = vk_shift;
	break;
	case CONTROLLER:
		jump = gp_face1;
		run = gp_face3;
	break;
}


switch(control_type){
	case KEYBOARD:
		global.move_right = keyboard_check(move_right);
		global.move_left = keyboard_check(move_left);
		global.move_up = keyboard_check(move_up);
		global.move_down = keyboard_check(move_down);

		global.jump = keyboard_check(jump);
		global.jump_pressed = keyboard_check_pressed(jump);
		global.jump_released = keyboard_check_released(jump);
		
		global.run = keyboard_check(run);
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