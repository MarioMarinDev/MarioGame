/// @desc: Normal Block Variables

event_inherited();

width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;

xc = bbox_left + (width / 2);
yc = bbox_top + (height / 2);

particle_direction = [30, 60, 120, 150];
var_dir = [10, -10];
var_spd = [0.5, -0.5];

sound_break = snd_block_break00;