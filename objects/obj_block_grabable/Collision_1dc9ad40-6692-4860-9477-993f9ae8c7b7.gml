/// @desc: Collision

if(place_meeting(x, y, other)){
	
	var other_dir = point_direction(other.x, other.y, x, y);
	var other_hspd = lengthdir_x(8, other_dir);
	var other_vspd = lengthdir_y(8, other_dir);
	x += other_hspd;
	y += other_vspd;
	
}