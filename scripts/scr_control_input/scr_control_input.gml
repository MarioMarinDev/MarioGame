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
		move_right = [gp_axislh, gp_padr];
		move_left = [gp_axislh, gp_padl];
		move_up = [gp_axislv, gp_padu];
		move_down = [gp_axislv, gp_padd];
		jump = [gp_face1, gp_face4];
		run = [gp_face3, gp_face2, gp_shoulderlb, gp_shoulderrb];
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
		global.move_right = gamepad_check_array(AXIS_POSITIVE, move_right, control_id);
		global.move_left = gamepad_check_array(AXIS_NEGATIVE, move_left, control_id);
		global.move_down = gamepad_check_array(AXIS_POSITIVE, move_down, control_id);
		global.move_up = gamepad_check_array(AXIS_NEGATIVE, move_up, control_id);
		
		global.jump = gamepad_check_array(NORMAL, jump, control_id);
		global.jump_pressed = gamepad_check_array(PRESSED, jump, control_id);
		global.jump_released = gamepad_check_array(RELEASED, jump, control_id);
		
		global.run = gamepad_check_array(NORMAL, run, control_id);
	break;
}