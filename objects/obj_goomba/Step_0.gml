/// @desc: Goomba Control

#region Movement Control
if(!defeat){
	dir = point_direction(0, 0, xaxis, yaxis);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	if(place_meeting(x + hspd, y, obj_block)){
		hspd = 0;
		xaxis *= -1;
	}

	x += hspd;
	y += vspd;
}
#endregion

#region Defeat Control
var stumped = false;
if(!defeat){
	if(scr_player_ground_pound_hit(id)){
		stumped = true;
	}else if(scr_player_jump_on(id)){
		stumped = true;
		scr_player_force_jump(20);
	}else if(place_meeting(x, y, obj_player) && !defeat){
		scr_player_defeat();
	}
}
if(stumped){
	defeat = true;
	frame_end_stop = true;
	image_index = 0;
}
if(frame_end_stop && image_index == sprite_get_number(sprite_index) - 1){
	alarm[1] = delay_destroy;
}
#endregion

#region Outside Room Destroy
if object_outside_room(id) instance_destroy();
#endregion

#region Sprite Control
if hspd != 0 { sprite_index = sprite_walk; image_xscale = sign(hspd); }
else sprite_index = sprite_idle;
if defeat sprite_index = sprite_defeat;
#endregion