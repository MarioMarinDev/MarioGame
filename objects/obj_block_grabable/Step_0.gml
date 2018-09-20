/// @desc: Block Grab Control

#region Take Object Control
if(!instance_exists(owner) && instance_exists(obj_player)){
	var sides = [-1, 1];
	for(var i = 0; i < array_length_1d(sides); i++){
		if(place_meeting(x + (proximity * sides[i]), y, obj_player) && global.run && !obj_player.crouching){
			owner = obj_player.id;
			obj_player.grabbing = id;
			active = false;
		}
	}
}
#endregion

#region Grabbing Control
if(instance_exists(owner) && grab_able){
	active = false;
	if sign(owner.image_xscale)
		x = owner.bbox_right;
	else x = owner.bbox_left - width;
	y = owner.y - 4;
	if(!global.run){
		if(global.move_up){
			alarm[2] = delay_active;
			elevation = jump_max;
			side_force = obj_player.xaxis;
		}else{
			active = true;
			x += proximity * sign(owner.image_xscale)
		}
		owner = noone;
		obj_player.grabbing = noone;
	}
}else{ 
	if grab_able active = true; 
	owner = noone; 
}
#endregion

#region Apply Gravity
if !instance_exists(owner) && active vspd = global.game_gravity_obj;
else vspd = 0;
if(elevation > 0){
	elevation -= abs(global.game_gravity_obj);
	vspd = -global.game_gravity_obj * 1.5;
}
hspd = side_force * 0.5;
if(place_meeting(x, y + vspd, obj_block)){
	while(!place_meeting(x, y + sign(vspd), obj_block)){
		y += sign(vspd);
	}
	side_force = 0;
	elevation = 0;
	vspd = 0;
}
// Horizontal collision check
if(place_meeting(x + hspd, y, obj_block)){
	while(!place_meeting(x + sign(hspd), y, obj_block))
		x += sign(hspd);
	hspd = 0;
}
x += hspd;
y += vspd;
#endregion