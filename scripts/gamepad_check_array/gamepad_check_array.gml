/// gamepad_check_array
/// @param:checkType,array,control_id

// Arguments
var type = argument0;
var array = argument1;
var control_id = argument2;

for(var i = 0; i < array_length_1d(array); i++){
	switch(type){
		case PRESSED:
			if gamepad_button_check_pressed(control_id, array[i]) return true;
		break;
		case RELEASED:
			if gamepad_button_check_released(control_id, array[i]) return true;
		break;
		case AXIS_POSITIVE:
			if(array[i] >= gp_axislh){
				if gamepad_axis_value(control_id, array[i]) > 0 return true;
			}
			if gamepad_button_check(control_id, array[i]) return true;
		break;
		case AXIS_NEGATIVE:
			if(array[i] >= gp_axislh){
				if gamepad_axis_value(control_id, array[i]) < 0 return true;
			}
			if gamepad_button_check(control_id, array[i]) return true;
		break;
		default:
			if gamepad_button_check(control_id, array[i]) return true;
		break;
	}
}

return false;
