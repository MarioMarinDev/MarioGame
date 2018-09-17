/// @desc: Camera Control

if(instance_exists(follows)){
	x_to = follows.x;
	y_to = follows.y;
}

var hspd = (x_to - x) / 10;
var vspd = (y_to - y) / 10;
var width = global.game_widthView / 2;
var height = global.game_heightView / 2;

if x + hspd < width || x + hspd > room_width - width
	hspd = 0;
if y + vspd < height || y + vspd > room_height - height
	vspd = 0;

x += hspd;
y += vspd;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);