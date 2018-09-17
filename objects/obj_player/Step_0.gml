/// @desc: Player Control

// if script_exists(state) script_execute(state);

#region Movement Control

#region Get player input
if(!ground_pound){
	xaxis = global.move_right - global.move_left;
}
#endregion

#region Local variables
var real_fric = fric;
var real_spd_acceleration = spd_acceleration;
var real_spd_max = spd;
var real_jump_max = jump_max;
var real_gravity = global.game_gravity;
var real_gravity_acc = global.game_gravity_acc;
#endregion

#region Run control
if( (on_ground || jumping) && global.run){
	real_spd_acceleration = spr_run_acceleration;
	real_spd_max = spd_run;
}
#endregion

#region Crouch control
if(on_ground && !wall_sliding && global.move_down){
	crouching = true;
	real_fric = fric_crouch;
}else if(!place_meeting(x, bbox_bottom - (sprite_get_height(mask_index) * image_yscale), obj_block) && !global.move_down) 
	crouching = false;
if crouching && on_ground xaxis = 0;
else if crouching real_spd_acceleration *= 0.5;
#endregion

#region Apply fiction
if(xaxis != sign(hspd)){ 
	if abs(hspd) > 1 hspd = clamp(hspd + (real_fric * (sign(hspd) * -1)), -real_spd_max, real_spd_max);
	else if xaxis == 0 hspd = 0;
}
if ground_pound { real_gravity *= 1.5; real_gravity_acc *= 1.5 }
hspd = clamp(hspd + (xaxis * real_spd_acceleration), -real_spd_max, real_spd_max);
vspd = clamp(vspd + real_gravity_acc, 0, real_gravity);
#endregion

#region Ground check
if place_meeting(x, y + step_size, obj_block){
	on_ground = true; 
	jumping = false;
}else on_ground = false;
#endregion

#region Wall jumping control
if wall_sliding vspd *= 0.75;
if(place_meeting(x + (xaxis * 2), y, obj_block) && !crouching && !on_ground && sign(vspd) > 0){
	wall_sliding = true;
	wall_sliding_dir = xaxis;	
}
if( (wall_sliding && xaxis == -wall_sliding_dir) || !place_meeting(x + (wall_sliding_dir * 2), y, obj_block))
	wall_sliding = false;
if(wall_sliding && global.jump_pressed){
	wall_sliding = false;
	jump_air = 0;
	jumping = true;
	vspd -= wall_jump_spd;
	hspd += wall_jump_spd * (wall_sliding_dir * -1);
}
#endregion

#region Jumping control
if crouching real_jump_max = jump_max * 0.5;
if global.jump_pressed && on_ground && alarm[5] <= 0 jumping = true;
if global.jump_released && jumping jumping = false;
if(global.jump && jump_air < real_jump_max && jumping){ 
	vspd = -jump_spd;
	jump_air += jump_spd;
}
if on_ground jump_air = 0;
if place_meeting(x, y - 1, obj_block) && !on_ground jumping = false;
#endregion

#region Jump Forced Control
if(jumping_forced){
	jumping = true;
	if(jumping_forced_elevation > 0){
		vspd = -jump_spd;
		jumping_forced_elevation -= abs(jump_spd);
	}else{
		jump_air = 0;
		jumping_forced = false;
	}
}
#endregion

#region Collision check
// Vertical collision check
if(place_meeting(x, y + vspd, obj_block) && moveable){
	while(!place_meeting(x, y + sign(vspd), obj_block))
		y += sign(vspd);
	vspd = 0;
}

// Horizontal collision check
if(place_meeting(x + hspd, y, obj_block) && moveable){
	if(place_meeting(x + hspd, y - step_size, obj_block)){
		while(!place_meeting(x + sign(hspd), y, obj_block))
			x += sign(hspd);
		hspd = 0;
	}else y -= step_size;
}
#endregion

#region Apply movement
if(moveable){
	x += hspd;
	y += vspd;
}
#endregion

#endregion

#region Ground Pound Control
if(moveable && !ground_pound && !crouching && !on_ground && global.move_down && xaxis == 0){
	scr_ac_add(ac, sound_ground_pound, 5, false, true, true, true);
	ground_pound = true;
	wall_sliding = false;
	moveable = false;
	alarm[4] = delay_ground_pound;
}
if(ground_pound && on_ground && alarm[5] <= 0){
	scr_ac_add(ac, sound_ground_pound_hit, 5, false, true, true, true);
	alarm[5] = delay_ground_pound;
}
#endregion

#region Defeat Control
var defeated = false;

if bbox_bottom > room_height defeated = true;

if(!defeat && defeated){
	defeat = true;
	moveable = false;
	def_x = x; def_y = y;
}

// Defeat animation
if(defeat){
	var particle = instance_create_depth(x, y, -1, obj_particle);
	particle.sprite_index = sprite_defeat;
	particle.anim_type = ANIM_PLAYER_DEFEAT;
	instance_destroy();
}
#endregion

#region Sprite Control

if xaxis == 0 sprite_index = sprite_idle;
else if abs(hspd) >= spd_run * 0.95 sprite_index = sprite_run;
else sprite_index = sprite_walk;
if !on_ground{
	if vspd <= 1 sprite_index = sprite_jump;
	else if vspd > 1 sprite_index = sprite_fall;
	if wall_sliding sprite_index = sprite_wall;
}
if crouching sprite_index = sprite_crouch;
if(ground_pound){
	sprite_index = sprite_ground_pound;
	if alarm[4] > 0 image_angle += (360 / delay_ground_pound) * sign(-image_xscale)
	else image_angle = 0;
}
if defeat sprite_index = sprite_defeat;

// Change facing direction
if xaxis > 0 image_xscale = abs(image_xscale);
else if xaxis < 0 image_xscale = abs(image_xscale) * -1;
#endregion

#region Mask Control
if crouching mask_index = mask_crouch;
else mask_index = mask_normal;
#endregion

#region Sound Control
if jumping scr_ac_add(ac, sound_jump, 5, false, false, false, false);
else scr_ac_remove(ac, sound_jump);
#endregion