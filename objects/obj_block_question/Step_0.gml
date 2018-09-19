/// @desc: Block Control

#region // Hit control
var just_hit = false;
if(scr_player_jump_hit(id)){
	hit = true;
	hit_dir = 1;
	just_hit = true;
	var snd = sound;
	with obj_player scr_ac_add(ac, snd, 5, false, true, false, true);
}
if(scr_player_ground_pound_hit(id)){
	hit = true;
	hit_dir = -1;
	just_hit = true;
}
if(hit && just_hit){
	hitting = true;
	alarm[0] = hit_delay;
	scr_block_question_create();
}
if(scr_player_standing_on(id)){
	hitting = true;
	alarm[0] = hit_delay;
}
if alarm[0] <= 0 hitting = false;
#endregion

#region // Sprite control
if(hit){
	sprite = sprite_hit;
	image_speed = 0;
	if hitting frame = 1;
	else frame = 0; 
}else sprite = sprite_normal;
#endregion