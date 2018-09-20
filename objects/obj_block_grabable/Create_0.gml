/// @desc: Block Grabable Variables

event_inherited();

owner = noone;
grab_able = true;

delay_active = room_speed / 2;

hspd = 0;
vspd = 0;
proximity = 3;

side_force = 0;
elevation = 0;
jump_max = 80;

width = sprite_get_width(sprite_index) * image_xscale;
height = sprite_get_height(sprite_index) * image_yscale;
