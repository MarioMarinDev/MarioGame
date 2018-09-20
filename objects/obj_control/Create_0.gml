/// @desc: Setup

depth = -100;

global.game_win = false;
global.game_defeat = false;
global.game_next_room = room;
global.game_gravity = 4;
global.game_gravity_acc = 0.05;
global.game_gravity_obj = 2;
global.game_widthView = 640;
global.game_heightView = 380;
global.game_secrets = false;
global.game_secrets_delay = room_speed * 10;

global.game_sound_win = snd_win00;

global.dev = false;
global.dev_show = true;

control_id = 0;
control_type = KEYBOARD;

y_max = 0;