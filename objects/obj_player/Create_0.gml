/// @desc: Player Variables

#region Properties variables
state = NULL;
first_move = false;
moveable = true;
jumping = false;
jumping_forced = false;
on_ground = false;
crouching = false;
wall_sliding = false;
wall_sliding_dir = NULL;
ground_pound = false;
grabbing = noone;
win = false;
defeat = false;
#endregion

#region Movement variables

last_delta = delta_time;

spd = 1.5;
spd_acceleration = 0.03;
spd_run = 2.5;
spr_run_acceleration = 0.03;
jump_spd = 3;
jump_air = 0;
jump_max = 80;

fric = 0.08;
fric_crouch = 0.01;

wall_jump_spd = 3;

step_size = 2;

hspd = 0;
vspd = 0;

defeat_elevation = 80;
jumping_forced_elevation = 30;
#endregion

#region Delay variables
delay_ground_pound = room_speed * 0.33;
delay_win = room_speed * 0.5;
delay_defeat = delay_win;
#endregion

#region Sprite variables
sprite_idle = spr_player_mario_idle;
sprite_walk = spr_player_mario_walk;
sprite_run = spr_player_mario_run;
sprite_jump = spr_player_mario_jump;
sprite_fall = spr_player_mario_fall;
sprite_crouch = spr_player_mario_crouch;
sprite_wall = spr_player_mario_wall;
sprite_ground_pound = spr_player_mario_ground_pound;
sprite_win = spr_player_win;
sprite_defeat = spr_player_defeat;

sprite_grab_idle = spr_player_mario_grab_idle;
sprite_grab_walk = spr_player_mario_grab_walk;
sprite_grab_jump = spr_player_mario_grab_jump;
sprite_grab_fall = spr_player_mario_grab_fall;

mask_normal = spr_player_mario_mask;
mask_crouch = spr_player_mario_mask_crouch;
mask_wall = spr_player_mario_mask_wall;
mask_ground_pound = spr_player_mario_mask_ground_pound;
#endregion

#region Sound variables
sound_jump = snd_jump00;
sound_ground_pound = snd_ground_pound00;
sound_ground_pound_hit = snd_ground_pound_hit00;
#endregion

#region Other objects variables
ac = instance_create_depth(0, 0, depth, obj_audio_controller);
camera = instance_create_depth(x, y, depth, obj_camera);
camera.follows = id;
#endregion