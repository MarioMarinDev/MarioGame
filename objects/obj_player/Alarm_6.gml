/// @desc: Win Timer

camera.zoom = true;
alarm[7] = delay_win;

audio_pause_all();
scr_player_add_sound(global.game_sound_win, 5, false, true, false, false);
