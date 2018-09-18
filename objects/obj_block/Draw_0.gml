/// @desc: Block

if(sprite_index != spr_block_test){
	var img_spd = sprite_get_speed(sprite);
	draw_sprite_ext(sprite, frame, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if alarm[10] <= 0 alarm[10] = (img_spd / 2) * image_speed;
}