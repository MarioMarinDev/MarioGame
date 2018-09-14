/// @desc: Player Variables

// Properties variables
state = NULL;
jumping = false;
on_ground = false;
crouching = false;
wall_sliding = false;

#region Movement variables
spd = 2;
spd_acceleration = 0.03;
jump_spd = 3;
jump_air = 0;
jump_max = 80;

fric = 0.08;
fric_crouch = 0.01;

wall_jump_spd = 4;

hspd = 0;
vspd = 0;
#endregion

#region Sprite variables
sprite_idle = spr_player_mario_idle;
sprite_run = spr_player_mario_run;
sprite_jump = spr_player_mario_jump;
sprite_fall = spr_player_mario_fall;
sprite_crouch = spr_player_mario_crouch;
sprite_wall = spr_player_mario_wall;

mask_normal = spr_player_mario_mask;
mask_crouch = spr_player_mario_mask_crouch;
mask_wall = spr_player_mario_mask_wall;
#endregion