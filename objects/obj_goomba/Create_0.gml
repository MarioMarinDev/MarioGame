/// @desc: Goomba Variables

event_inherited();

#region Properties variables
defeat = false;
frame_end_stop = false;
#endregion

#region Movement variables
dir = 0;
hspd = 0;
vspd = 0;

xaxis = sign(image_xscale);
yaxis = 0;

spd = 0.3;
#endregion

#region Delay variables
delay_destroy = room_speed * 0.5;
#endregion

#region Sprite variables
sprite_idle = spr_goomba_idle;
sprite_walk = spr_goomba_walk;
sprite_defeat = spr_goomba_defeat;
#endregion
