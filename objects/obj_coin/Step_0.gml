/// @desc: Coin Control

if(type == BLOCK){
	if(moved < (sprite_get_width(sprite_index) * image_xscale) * 1.3){
		y += spd * dir;
		moved += spd;
	}else{
		if alarm[0] <= 0 alarm[0] = block_delay;
	}
}

#region Sprite Control
if type == NORMAL image_speed = spin_spd;
else if type == BLOCK { image_speed = 0; image_index = 0; }
#endregion