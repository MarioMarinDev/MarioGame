/// @desc: Red Star Control

#region Active Control
if global.game_secrets_red_complete active = true;
else active = false;
#endregion

#region Float Control
if(instance_exists(follows)){
	float_moved += abs(float_spd);
	if(float_moved >= float_max && float_dir > 0){
		float_dir = -1;
		float_moved = 0;
	}else if(float_moved >= float_max && float_dir < 0){
		float_dir = 1;
		float_moved = 0;
	}
}
#endregion

#region Following Control
if(instance_exists(follows)){
	if follows.x > x x_to = follows.bbox_left;
	else x_to = follows.bbox_right;
	y_to = follows.bbox_top;

	hspd = (x_to - x) / 33;
	vspd = (y_to - y) / 33;

	if(place_meeting(x + hspd + (sign(hspd) * width), y + vspd, follows)){
		hspd = 0;
		vspd = 0;
	}

	dir = point_direction(x, 0, x_to, 0);

	x += hspd;
	y += vspd + (float_spd * float_dir);
}
#endregion

#region Sprite Control
if(instance_exists(follows)){
	image_speed = 0;
	if hspd > 0 image_index = 1;
	else if hspd < 0 image_index = 7;
}else{
	image_speed = spin_spd;
}
#endregion