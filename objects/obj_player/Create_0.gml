/// @desc: Player Variables

#region Properties variables
state = NULL;
moveable = true;
jumping = false;
on_ground = false;
crouching = false;
wall_sliding = false;
wall_sliding_dir = NULL;
ground_pound = false;
#endregion

#region Movement variables
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

step_size = 1.5;

hspd = 0;
vspd = 0;
#endregion

#region Delay variables
delay_ground_pound = room_speed * 0.33;
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

mask_normal = spr_player_mario_mask;
mask_crouch = spr_player_mario_mask_crouch;
mask_wall = spr_player_mario_mask_wall;
#endregion

#region Sound variables
sound_jump = snd_jump00;
sound_ground_pound = snd_ground_pound00;
sound_ground_pound_hit = snd_ground_pound_hit00;
#endregion

#region Other objects variables
ac = instance_create_depth(0, 0, depth, obj_audio_controller);
camera = instance_create_depth(room_width / 2, room_height / 2, depth, obj_camera);
camera.follows = id;
#endregion