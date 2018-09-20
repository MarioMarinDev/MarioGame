/// @desc: Red Start Custom Variables

event_inherited();

follows = noone;
x_to = x;
y_to = y;

width = sprite_get_width(sprite_index) * image_xscale;
height = sprite_get_height(sprite_index) * image_yscale;

float_spd = 0.1;
float_y = 0;
float_max = width / 2;
float_moved = float_max / 2;
float_dir = choose(-1, 1);
show_debug_message("Float now: " + string(float_moved));
show_debug_message("Float max:" + string(float_max));

hspd = 0;
vspd = 0;
dir = 0;