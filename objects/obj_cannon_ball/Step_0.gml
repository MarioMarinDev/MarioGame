/// @desc: Cannon Ball Control

var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;

var destroyed = false;
if(scr_player_ground_pound_hit(id)){
	destroyed = true;
}else if(scr_player_jump_on(id)){
	destroyed = true;
	scr_player_force_jump(20);
}else if(place_meeting(x, y, obj_player)){
	scr_player_defeat();
	destroyed = true;
}else if(place_meeting(x, y, obj_block) && alarm[1] <= 0){
	destroyed = true;	
}

if(destroyed){
	var particle = instance_create_depth(x, y, depth, obj_particle);
	particle.sprite_index = sprite_index;
	particle.anim_type = ANIM_DROP_FADE;
	instance_destroy();
}

if object_outside_room(id) instance_destroy();