/// @desc: Block

draw_self();

if(global.dev){
	scr_dev_draw_defaults();
	var xx = bbox_left, yy = bbox_bottom;
	var ys = font_get_size(fnt_dev);
	draw_text(xx, yy, "Hit: " + string_bool(hit)); yy += ys;
	draw_text(xx, yy, "Hitting: " + string_bool(hitting)); yy += ys;
	draw_text(xx, yy, "Alarm[0]: " + string(alarm[0]));
}