/// @desc: Sprite Timer

var frames = sprite_get_number(sprite);

if(!frame_end_stop){
	frame++;
	if frame >= frames frame = 0;
}else{
	if frame < frames - 1 frame++;
}