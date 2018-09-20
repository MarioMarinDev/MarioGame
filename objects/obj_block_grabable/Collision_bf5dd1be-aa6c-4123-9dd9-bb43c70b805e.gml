/// @desc: Collision

var threshold = 1;

if(collision_rectangle(bbox_left - threshold, bbox_top - threshold, bbox_right + threshold, bbox_bottom + threshold, other, false, false)){
	
	var other_dir = point_direction(other.x, other.y, x, y);
	var other_hspd = lengthdir_x(8, other_dir);
	var other_vspd = lengthdir_y(8, other_dir);
	x += other_hspd;
	y += other_vspd;
	
}