/// @desc: Block Variables

event_inherited();

#region Properties variables
hit = false;
hit_dir = 0;
hitting = false;
contains = noone;
created = false;
#endregion

#region Sprite variables
sprite_normal = spr_block_question;
sprite_hit = spr_block_hit;
#endregion

sound = snd_block_hit00;

#region Time variables
hit_delay = room_speed * 0.45; // Frames
#endregion