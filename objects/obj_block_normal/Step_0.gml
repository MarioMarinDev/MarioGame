/// @desc: Normal Block Control

#region Break Control
if(scr_player_jump_hit(id) || scr_player_ground_pound_hit(id)){
	scr_player_cancel_jump();
	for(var i = 0; i < array_length_1d(particle_direction); i++){
		var brick = instance_create_depth(xc, yc, depth - 1, obj_particle);
		brick.sprite_index = spr_block_normal_piece;
		brick.anim_type = ANIM_BRICK_DESTROY;
		brick.horizontal_dir = particle_direction[i] + random_range(var_dir[0], var_dir[1]);
		brick.spd += random_range(var_spd[0], var_spd[1]);
	}
	scr_player_add_sound(sound_break, 5, false, true, true, true);
	instance_destroy();
}
#endregion