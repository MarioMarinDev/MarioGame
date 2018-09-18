/// @desc: Camera Control

if(zoom){
	if zoom_x < global.game_widthView / 2 zoom_x += zoom_spd;
	if zoom_y < global.game_heightView / 2 zoom_y += zoom_spd;
}

var width = (global.game_widthView - zoom_x) / 2;
var height = (global.game_heightView - zoom_y) / 2;

var view_left = x - width;
var view_right = x + width;
var view_top = y - height;
var view_bottom = y + height;

if(instance_exists(follows)){
	x_to = follows.x;
	y_to = follows.y;
	if(!init){
		init = true;
		if view_left < 0 x = width;
		else if view_right > room_width x = room_width - width;
		if view_top < 0 y = height;
		else if view_bottom > room_height y = room_height - height;
	}
}

var hspd = (x_to - x) / 10;
var vspd = (y_to - y) / 10;

if view_left + hspd < 0 || view_right + hspd > room_width
	hspd = 0;
if view_top + vspd < 0 || view_bottom + vspd > room_height
	vspd = 0;

x += hspd;
y += vspd;


var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(global.game_widthView - zoom_x, global.game_heightView - zoom_y, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);