/// object_outside_view
/// @param:object

var obj = argument0;

if(instance_exists(obj) && instance_exists(obj_camera)){
	var cam_x = obj_camera.x, cam_y = obj_camera.y;
	var xx = global.game_widthView / 2;
	var yy = global.game_heightView / 2;
	if obj.bbox_right < cam_x - xx || obj.bbox_left > cam_x + xx
		return true;
	if obj.bbox_bottom < cam_y - yy || obj.bbox_top > cam_y + yy
		return true;
}

return false;