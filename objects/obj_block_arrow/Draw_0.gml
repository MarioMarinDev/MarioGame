/// @desc: Arrow Block

draw_self();

if(global.dev){
	scr_dev_draw_defaults();
	var xx = bbox_left;
	var yy = bbox_bottom;
	var ys = font_get_size(fnt_dev);
	draw_text(xx, yy, "Block x: " + string(x_block)); yy += ys;
	draw_text(xx, yy, "Block y: " + string(y_block)); yy += ys;
	
	draw_rectangle(block[LEFT], block[TOP], block[RIGHT], block[BOTTOM], true);
	if mask_index == sprite_mask
		draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	
}