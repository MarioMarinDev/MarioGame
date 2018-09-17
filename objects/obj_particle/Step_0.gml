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
				if(y > room_height){
					instance_destroy();
				}
			break;
		}
	break;
	#endregion
	
}