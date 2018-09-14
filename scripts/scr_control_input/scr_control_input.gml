/// scr_control_input

global.move_right = keyboard_check(ord("D"));
global.move_left = keyboard_check(ord("A"));
global.move_up = keyboard_check(ord("W"));
global.move_down = keyboard_check(ord("S"));

var jump = vk_space;
global.jump = keyboard_check(jump);
global.jump_pressed = keyboard_check_pressed(jump);
global.jump_released = keyboard_check_released(jump);
