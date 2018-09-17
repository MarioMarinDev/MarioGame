/// scr_dev_control

var dev_key = keyboard_check_pressed(vk_f1);
var dev_show_key = keyboard_check_pressed(vk_f2);
var dev_quit_key = keyboard_check_pressed(vk_escape);
var dev_restart_key = keyboard_check_pressed(vk_home);
var dev_restart_room_key = keyboard_check_pressed(vk_end);

if(dev_key){
	global.dev = !global.dev;
}

if(dev_show_key){
	global.dev_show = !global.dev_show;
}

if(global.dev){
	if(dev_quit_key){
		game_end();
	}

	if(dev_restart_key){
		game_restart();
	}

	if(dev_restart_room_key){
		room_restart();
	}
}