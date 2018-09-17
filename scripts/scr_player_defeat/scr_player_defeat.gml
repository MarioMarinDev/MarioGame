/// scr_player_defeat

if(instance_exists(obj_player)){
	if(!obj_player.defeat){
		obj_player.moveable = false;
		obj_player.defeat = true;
		obj_player.def_x = obj_player.x;
		obj_player.def_y = obj_player.y;
	}
}