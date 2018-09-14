/// @desc: Player Control

if script_exists(state) script_execute(state);

#region Movement Control

xaxis = global.move_right - global.move_left;

// Crouch control
var real_fric = fric;
var real_spd_acceleration = spd_acceleration;
if(on_ground && !wall_sliding && global.move_down){
	crouching = true;
	real_fric = fric_crouch;
}else if(!place_meeting(x, y - (sprite_get_height(mask_index) * image_yscale), obj_block) && !global.move_down) 
	crouching = false;
if crouching && on_ground xaxis = 0;
else if crouching real_spd_acceleration *= 0.5;

// Apply fiction
if(xaxis != sign(hspd)){ 
	if abs(hspd) > 1 hspd = clamp(hspd + (real_fric * (sign(hspd) * -1)), -spd, spd);
	else if xaxis == 0 hspd = 0;
}
hspd = clamp(hspd + (xaxis * real_spd_acceleration), -spd, spd); //hspd = xaxis * spd;
vspd = clamp(vspd + global.game_gravity_acc, 0, global.game_gravity); // vspd = global.game_gravity;

// Ground check
if place_meeting(x - (xaxis), y + 1, obj_block){
	on_ground = true; 
	jumping = false;
}else on_ground = false;

// Wall jumping control
if(place_meeting(x + (xaxis * 2), y, obj_block) && !crouching && !on_ground && sign(vspd) > 0){
	wall_sliding = true;
	vspd *= 0.75;	
}else wall_sliding = false;
if(wall_sliding && global.jump_pressed){
	jump_air = 0;
	jumping = true;
	vspd -= wall_jump_spd;
	hspd += wall_jump_spd * (xaxis * -1);
}

// Jumping control
var real_jump_max = jump_max;
if crouching real_jump_max = jump_max * 0.5;
if global.jump_pressed && on_ground jumping = true;
if global.jump_released && jumping jumping = false;
if(global.jump && jump_air < real_jump_max && jumping){ 
	vspd = -jump_spd;
	jump_air += jump_spd;
}
if on_ground jump_air = 0;
if place_meeting(x, y - 1, obj_block) && !on_ground jumping = false;

// Vertical collision check
if(place_meeting(x, y + vspd, obj_block)){
	while(!place_meeting(x, y + sign(vspd), obj_block))
		y += sign(vspd);
	vspd = 0;
}

// Horizontal collision check
if(place_meeting(x + hspd, y, obj_block)){
	while(!place_meeting(x + sign(hspd), y, obj_block))
		x += sign(hspd);
	hspd = 0;
}

// Apply movement
x += hspd;
y += vspd;

#endregion

#region Sprite Control

if xaxis == 0 sprite_index = sprite_idle;
else sprite_index = sprite_run;
if !on_ground{
	if vspd <= 1 sprite_index = sprite_jump;
	else if vspd > 1 sprite_index = sprite_fall;
	if wall_sliding sprite_index = sprite_wall;
}
if crouching sprite_index = sprite_crouch;

// Change facing direction
if xaxis > 0 image_xscale = abs(image_xscale);
else if xaxis < 0 image_xscale = abs(image_xscale) * -1;
#endregion

#region Mask Control
//if !crouching mask_index = mask_normal;
//else mask_index = mask_crouch;
if crouching mask_index = mask_crouch;
else if wall_sliding mask_index = mask_wall;
else mask_index = mask_normal;
#endregion