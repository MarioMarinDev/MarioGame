/// @desc: Control Setup

if(instance_exists(obj_transition)){
	moveable = false;
}else if(!first_move){
	first_move = true;
	moveable = true;
	scr_ac_remove_all(ac);
}