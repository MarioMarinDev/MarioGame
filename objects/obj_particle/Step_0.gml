/// @desc: Particle Control

switch(anim_type){
	
	#region Brick Destroy Animation
	case ANIM_BRICK_DESTROY:
		switch(anim_state){
			case NULL:
				image_angle = irandom_range(0, 359);
				anim_state = START;
				elevation = 15;
			break;
			case START:	
				image_angle += rotation_dir * rotation_spd;
				if(elevation > 0){
					hspd = lengthdir_x(spd, horizontal_dir);
					vspd = lengthdir_y(spd, 90);
					elevation -= abs(vspd);
					x += hspd;
					y += vspd;
				}else{
					y += spd;
				}
			break;
		}
	break;
	#endregion
	
	#region Drop Animation
	case ANIM_DROP:
		switch(anim_state){
			case NULL:
				anim_state = START;
			break;
			case START:
				y += spd;
			break;
		}
	break;
	#endregion
	
	#region Player Defeat Animation	
	case ANIM_PLAYER_DEFEAT:
		switch(anim_state){
			case NULL:
				elevation = 80;
				anim_state = START;
			break;
			case START:
				if(elevation > 0){
					y -= spd;
					elevation -= abs(spd);
				}else y += spd;
				if y > room_height && elevation <= 0 room_goto(room);
			break;
		}
	break;
	#endregion
	
}

// Destroy if outside of room
if(y > room_height){
	instance_destroy();
}