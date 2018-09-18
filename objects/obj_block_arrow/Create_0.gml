/// @desc: Arrow Block Variables

event_inherited();

sprite = sprite_index;

x_block = lengthdir_x(1, image_angle);
y_block = lengthdir_y(1, image_angle);

threshold = 1;

width = sprite_get_width(sprite_index) * image_xscale; 
height = sprite_get_height(sprite_index) * image_yscale;

block[RIGHT] = x + (width / 2);
block[LEFT] = x - (width / 2);
block[BOTTOM] = y + (height / 2);
block[TOP] = y - (height / 2);

sprite_mask = spr_block_arrow_mask;