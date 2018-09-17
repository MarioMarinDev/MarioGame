/// @desc: Player

if !defeat
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
else{
	draw_sprite_ext(sprite_defeat, image_index, def_x, def_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if global.dev {
	draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_set_color(c_lime);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, true);
}