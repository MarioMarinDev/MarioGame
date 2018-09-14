
if(global.dev){
	
	draw_set_color(c_white);
	draw_set_font(fnt_dev);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	var xx = 5;
	var yy = 5;
	var ys = string_height("1");
	
	draw_rectangle_dim(0, 0, view_wport[0], y_max, 0.7, c_black, false);
	
	draw_text(xx, yy, string(fps) + " DEVELOPER MODE (" + room_get_name(room) + ")"); yy += ys;
	draw_text(xx, yy, "Room Instances: " + string(instance_count)); yy += ys;
	
	// Mario Stats
	if(instance_exists(obj_player)){
		draw_text(xx, yy, "Mario spd: " + string(obj_player.hspd) + ", " + string(obj_player.vspd)); yy += ys;
		draw_text(xx, yy, "Mario on_groud: " + string_bool(obj_player.on_ground)); yy += ys;
		draw_text(xx, yy, "Mario crouching: " + string_bool(obj_player.crouching)); yy += ys;
		draw_text(xx, yy, "Mario wall_sliding: " + string_bool(obj_player.wall_sliding)); yy += ys;
	}
	
	y_max = yy + ys;
	
}