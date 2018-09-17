/// @desc: Camera Variables

#region Camera setup
camera = camera_create();
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(global.game_widthView, global.game_heightView, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);
view_camera[0] = camera;
#endregion

#region Properties variables
follows = noone;
spd = 1;
#endregion

#region Movement variables
x_to = x;
y_to = y;
#endregion