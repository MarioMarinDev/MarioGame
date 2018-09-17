/// keyboard_check_array
/// @param:checkType,array

// Arguments
var type = argument0;
var array = argument1;

for(var i = 0; i < array_length_1d(array); i++){
	switch(type){
		case PRESSED:
			if keyboard_check_pressed(array[i]) return true;
		break;
		case RELEASED:
			if keyboard_check_released(array[i]) return true;
		break;
		default:
			if keyboard_check(array[i]) return true;
		break;
	}
}

return false;