/// @desc: Change ROOM Timer

if win global.game_win = true;
else if defeat global.game_defeat = true;

if(room_exists(room_next(room))){
	global.game_next_room = room_next(room);
}else{
	global.game_next_room = rm_level_00_01;
}