/// @desc: Interacion

if(type == NORMAL && active){
	instance_destroy();
	var snd = sound;
	with other scr_ac_add(ac, snd, 5, false, true, true, true);
}