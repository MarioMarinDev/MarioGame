/// @desc: Change ROOM Timer

if win global.game_win = true;
else if defeat global.game_defeat = true;
global.game_next_room = room_next(room);